select 
  id,
  email,
  u."firstName",
  u."lastName"
from users u
where  
  u.email ilike {{'%' + userFilter.inputValue + '%'}}
  or concat(u."firstName", ' ', u."lastName") ilike {{'%' + userFilter.inputValue + '%'}}
  or u.id = any({{userFilter.value}})
limit 100