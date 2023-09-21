with

raw_page_saves as (
  -- page_saves table doesn't have an index on createdAt, so there's not much we can optimize here
  select 
    count(*) filter (
      where "createdAt" > {{ currentTimeRange.value.start }}
      and "createdAt" < {{ currentTimeRange.value.end }}) as count_current_page_saves,
    count(*) filter (
      where "createdAt" > {{ currentTimeRange.value.startPrev }}
      and "createdAt" < {{ currentTimeRange.value.start }}) as count_previous_page_saves
  from page_saves

),

raw_page_views as (
  select 
    count(*) filter (
      where "createdAt" > {{ currentTimeRange.value.start }}
      and "createdAt" < {{ currentTimeRange.value.end }}) as count_current_page_views,
    count(*) filter (
      where "createdAt" > {{ currentTimeRange.value.startPrev }}
      and "createdAt" < {{ currentTimeRange.value.start }}) as count_previous_page_views
  from audit_trail_events
  where "actionType" = 'PAGE_VIEW' AND "createdAt" > {{ currentTimeRange.value.startPrev }} AND "createdAt" < {{ currentTimeRange.value.end }} AND "organizationId" = ANY({{organizationIds.data}}) -- this is necessary to hit (organizationId, createdAt) index
),

raw_active_users as (
  select
    count(distinct "userId") filter (
      where "createdAt" > {{ currentTimeRange.value.start }}
      and "createdAt" < {{ currentTimeRange.value.end }}) as count_current_users,
    count(distinct "userId") filter (
      where "createdAt" > {{ currentTimeRange.value.startPrev }}
      and "createdAt" < {{ currentTimeRange.value.start }}) as count_previous_users
  from audit_trail_events
  where "actionType" = ANY({{userActions.value}}) AND "createdAt" > {{ currentTimeRange.value.startPrev }} AND "createdAt" < {{ currentTimeRange.value.end }} AND "organizationId" = ANY({{organizationIds.data}}) -- this is necessary to hit (organizationId, createdAt) index
),

t30_active_users as (
 select
    count(distinct "userId") filter (
      where "createdAt" >= (to_date({{ todaysDate.value }}, 'YYYY-MM-DD') - INTERVAL '30 DAYS') 
      and "createdAt" < {{ todaysDate.value }}) as count_t30_users,
    count(distinct "userId") filter (
      where "createdAt" >= (to_date({{ todaysDate.value }}, 'YYYY-MM-DD') - INTERVAL '60 DAYS')
      and "createdAt" < (to_date({{ todaysDate.value }}, 'YYYY-MM-DD') - INTERVAL '30 DAYS')) as count_previous_t30_users
  from audit_trail_events
  where "actionType" = ANY({{userActions.value}}) AND "createdAt" >= (to_date({{ todaysDate.value }}, 'YYYY-MM-DD') - INTERVAL '60 DAYS') AND "createdAt" < {{ todaysDate.value }} AND "organizationId" = ANY({{organizationIds.data}})
),

stats as (

  select 
    *,
    (count_current_page_saves - count_previous_page_saves)::decimal / nullif(count_previous_page_saves,0)
      as pct_growth_page_saves,
    (count_current_page_views - count_previous_page_views)::decimal / nullif(count_previous_page_views,0)
      as pct_growth_page_views,
    (count_current_users - count_previous_users)::decimal / nullif(count_previous_users,0)
      as pct_growth_users,
      (count_t30_users - count_previous_t30_users)::decimal / nullif(count_previous_t30_users,0) 
     as pct_growth_t30_users
  from raw_page_saves
  left join raw_page_views on true
  left join raw_active_users on true
  left join t30_active_users on true
)

select * from stats