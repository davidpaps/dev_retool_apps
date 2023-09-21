select distinct
  r."displayName",
  r.name,
  f.name as "folderName",
  r.type
from resources r 
left join resource_folders f
  on r."resourceFolderId" = f.id
where
  r."displayName" is not null
  and (concat(f.name, ' ', r."displayName") ilike {{'%' + resourceNameFilter.inputValue + '%'}}
    or r.type ilike {{'%' + resourceNameFilter.inputValue + '%'}}
    or r.name = any({{resourceNameFilter.value}}))
limit 50