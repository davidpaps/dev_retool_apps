select 
  pages.name,
  pages."updatedAt"
from pages
where  
  pages.name ilike {{'%' + appFilter.inputValue + '%'}}
  or pages.name = any({{appFilter.value}})
order by pages."updatedAt" desc
limit 100