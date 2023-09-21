with 

page_saves as (
-- get number of page saves per week for selected user
  select
    date_trunc('week', "createdAt") as week,
    count(*) as count_page_saves
  from page_saves
  
  where "userId" = {{ UsersTable.selectedRow.data.id }}
  and "createdAt" >= {{ currentTimeRange.value.start }}
  group by 1

),

page_views as (
-- get number of page views per week for selected user
  
  select
    date_trunc('week', "createdAt") as week,
    count(*) as count_page_views
  from audit_trail_events

  where 
    "organizationId" = ANY({{organizationIds.data}})
    and "createdAt" >= {{ currentTimeRange.value.start }}
    and "userId" = {{ UsersTable.selectedRow.data.id }}
    and "actionType" = 'PAGE_VIEW'
  group by 1

)

select
  page_saves.*,
  page_views.count_page_views
from page_saves 
left join page_views
  on page_views.week = page_saves.week

where
  page_saves.week > {{ currentTimeRange.value.start }}