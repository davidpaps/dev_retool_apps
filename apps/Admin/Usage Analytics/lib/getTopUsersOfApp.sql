with 

page_views_top as (

  select
    "userId" as user_id,
    concat(users."firstName", ' ', users."lastName") as user_name,
    count(*) as count_page_views
  from audit_trail_events
  left join users
  on users.id = audit_trail_events."userId"
  
  where 
    audit_trail_events."organizationId" = ANY({{organizationIds.data}})
    and audit_trail_events."createdAt" >= {{ currentTimeRange.value.start}}
    and audit_trail_events."createdAt" < {{ currentTimeRange.value.end}}
    and "pageName" = {{ AppTable.selectedRow.data.name }}
    and "actionType" = 'PAGE_VIEW'
  group by 1, 2

)

select * from page_views_top
where user_name <> ' '
order by count_page_views desc nulls last
limit 5