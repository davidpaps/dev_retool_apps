//SQL select all emails that are from selected rows:

//select email, concat(email, ' testing') from users where id = ANY ({{formatDataAsObject(table1.selectedRow.data).id}})