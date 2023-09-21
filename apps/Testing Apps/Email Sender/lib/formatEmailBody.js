let data = "";

if (tabbedContainer1.currentViewKey === "Template 1") {
  data = richTextEditor1.value;
} else if (tabbedContainer1.currentViewKey === "Template 2") {
  data = richTextEditor2.value;
} else {
  data = richTextEditor3.value;
}

return data