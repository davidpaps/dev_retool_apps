let array = [];

for (let i = 0; i < listView1.data.length; i++) {
  array.push({
    number: [i][0] + 1,
    parentNumber: listView1.data[i].numberInput1,
    parentText: listView1.data[i].textInput1,
    parentSelect: listView1.data[i].select1,
    child: [],
  });

  for (let j = 0; j < listView2[i].data.length; j++) {
    array[i].child.push({
      childText: textInput2[i][j].value,
      childNumber: numberInput2[i][j].value,
      childSelect: select2[i][j].value,
    });
  }
}

return array;
