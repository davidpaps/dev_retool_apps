const data = query2.trigger({
  additionalScope: {
    country: select1.value,
  },
});

return data;
