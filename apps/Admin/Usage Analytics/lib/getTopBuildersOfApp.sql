with 

page_saves_top as (

  select
    "userId" as user_id,
    concat(users."firstName", ' ', users."lastName") as user_name,
    count(*) as count_page_saves
  from page_saves
  left join users
  on users.id = page_saves."userId"
  where "pageId" = {{ AppTable.selectedRow.data.id }}
  and page_saves."createdAt" >= {{currentTimeRange.value.start}}
  and page_saves."createdAt" < {{currentTimeRange.value.end}}
  group by 1, 2

)

select * from page_saves_top
where user_name <> ' '
order by count_page_saves desc nulls last
limit 5