with 

page_saves as (

  select
    date_trunc('week', "createdAt") as week,
    count(*) as count_page_saves
  from page_saves
  
  where "pageId" = {{ AppTable.selectedRow.data.id }} AND "createdAt" >= {{ currentTimeRange.value.start }}
  group by 1

),

page_views as (

  select
    date_trunc('week', "createdAt") as week,
    count(*) as count_page_views
  from audit_trail_events

  where 
    "organizationId" = ANY({{organizationIds.data}})
    and "createdAt" >= {{ currentTimeRange.value.start }}
    and "pageName" = {{ AppTable.selectedRow.data.name }}
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