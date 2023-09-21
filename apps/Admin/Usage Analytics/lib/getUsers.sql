with

page_views as (

select
  "userId" as user_id,
  count(*) as count_page_views
from audit_trail_events
where
  "organizationId" = ANY({{organizationIds.data}})
  and "createdAt" <= {{ currentTimeRange.value.end }}
  and "createdAt" > {{ currentTimeRange.value.start }}
  and "actionType" = 'PAGE_VIEW'
group by 1

),

page_saves as (

select
  "userId" as user_id,
  count(*) as count_page_saves,
  count(distinct "pageId") as count_unique_apps
from page_saves
where
  "createdAt" <= {{ currentTimeRange.value.end }}
  and "createdAt" > {{ currentTimeRange.value.start }}
group by 1

),

users as (

select
  users.id,
  users.email,
  concat(users."firstName", ' ', users."lastName") as name,
  users."createdAt" as created_at,
  users."profilePhotoUrl" as profile_photo_url,
  users."lastLoggedIn" as last_logged_in
from users

)


select 
  users.*,
  page_saves.count_page_saves,
  page_saves.count_unique_apps,
  page_views.count_page_views
from users
left join page_saves
  on page_saves.user_id = users.id
left join page_views
  on page_views.user_id = users.id
where
  name ilike {{ '%' + UserSearchInput.value + '%' }}

order by count_page_views desc nulls last limit {{ MaxUsers.value }}