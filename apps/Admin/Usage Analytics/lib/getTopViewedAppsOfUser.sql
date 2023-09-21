with

page_views as (
	-- get number of page views all time for user
  select
    "pageName" as page_name,
    count(*) as count_page_views
  from audit_trail_events

  where 
    "organizationId" = ANY({{organizationIds.data}})
    and "createdAt" >= {{currentTimeRange.value.start}}
    and "createdAt" < {{currentTimeRange.value.end}}
    and "userId" = {{ UsersTable.selectedRow.data.id }}
    and "actionType" = 'PAGE_VIEW'
  group by 1

)

select * from page_views
order by count_page_views desc nulls last