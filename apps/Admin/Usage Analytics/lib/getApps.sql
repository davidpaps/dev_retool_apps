with page_views as (
  select
    "pageName" as page_name,
    count(*) as count_page_views,
    count(distinct "userId") as count_unique_viewers
  from
    audit_trail_events
  where
    "createdAt" <= {{ currentTimeRange.value.end }}
    and "createdAt" > {{ currentTimeRange.value.start }}
    and "organizationId"=ANY({{organizationIds.data}})  
    and "actionType"='PAGE_VIEW'
  group by
    1
),
page_saves as (
  select
    "pageId" as page_id,
    count(*) as count_page_saves,
    count(distinct "userId") as count_unique_builders
  from
    page_saves
  where
    "createdAt" <= {{ currentTimeRange.value.end }}
    and "createdAt" > {{ currentTimeRange.value.start }}
  group by
    1
),
pages as (
  select
    pages.name,
    pages.id,
    uuid,
    pages."createdAt" as created_at,
    "folderId" as folder_id,
    "isGlobalWidget" as is_module,
    "protected" as protected,
    folders.name as folder_name,
    users.email as last_edited_by
  from
    pages
    left join folders on folders.id = pages."folderId"
    left join users on users.id = pages."lastEditedBy"
  where
    pages.name ilike {{ '%' + ApplicationSearchInput.value + '%' }} 
    and  folders.name <> 'archive'
    and "isGlobalWidget" = FALSE
)
select
  pages.*,
  page_saves.count_page_saves,
  page_saves.count_unique_builders,
  page_views.count_page_views,
  page_views.count_unique_viewers
from
  pages
  left join page_saves on page_saves.page_id = pages.id
  left join page_views on page_views.page_name = pages.name
order by
  count_page_views desc nulls last
limit
  {{ MaxApps.value}};