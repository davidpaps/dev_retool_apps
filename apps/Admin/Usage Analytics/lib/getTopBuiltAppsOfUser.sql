with 

top_apps as (
-- get top applications by number of page saves
  select
    "pageId" as page_id,
    pages.name as page_name,
    count(*) as count_page_saves
  from page_saves
  left join pages
  on pages.id = page_saves."pageId"
  
  -- filter for user 
  where "userId" = {{ UsersTable.selectedRow.data.id }}
  and page_saves."createdAt" >= {{ currentTimeRange.value.start}}
  and page_saves."createdAt" < {{ currentTimeRange.value.end }}
  group by 1, 2

)

select * from top_apps
order by count_page_saves desc nulls last