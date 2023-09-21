let array = []

for(let i = 0; i < 100; i++){
  array.push({id: i, num: i + 1})
}

return formatDataAsObject(array)