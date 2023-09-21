with candidates as (
  select 
    ate.id
  from audit_trail_events ate 
  where
    -- time filter
    (ate."createdAt" between {{dateTime1.value}}
      and {{moment(dateTime1.value).add(numberInput1.value,  segmentedControl1.value).toISOString()}})
    -- user filter 
    and ({{!userFilter.value.length}}
      or ate."userId" = any({{userFilter.value}}))
    -- app filter
    and ({{!appFilter.value.length}} 
      or ate."pageName" = any({{appFilter.value}}))
    -- action filter
    and ({{!actionTypeFilter.value.length}} 
      or ate."actionType" = any({{actionTypeFilter.value}}))
    -- resource filter, null possible
    and ({{!resourceNameFilter.value.length}} 
      or ate."resourceName" = any({{resourceNameFilter.value}}) 
      or (ate."resourceName" = '') is not false)
)
select 
  users."firstName",
  users."lastName",
  users.email,
  ate.id,
  ate."actionType", 
  ate."pageName", 
  ate."queryName", 
  ate."createdAt",
  case 
    when resources."displayName" is null then ''
    when resource_folders."systemFolder" then resources."displayName"
    else concat(resource_folders.name, '/', resources."displayName")
  end as "resourceName",
  ate.metadata
from candidates c
left join audit_trail_events ate
  on c.id = ate.id
left join users 
  on ate."userId" = users.id
left join resources 
  on ate."resourceName" = resources.name
left join resource_folders
  on resources."resourceFolderId" = resource_folders.id
where 
  ({{!queryNameFilter.value.length}} 
    or ate."queryName" = any({{queryNameFilter.value}}) 
    or (ate."queryName" = '') is not false)
order by ate."createdAt" asc
limit {{table1.pageSize}}
offset {{table1.paginationOffset}};