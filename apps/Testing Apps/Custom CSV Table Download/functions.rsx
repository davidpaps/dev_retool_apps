<GlobalFunctions>
  <JavascriptQuery
    id="downloadFilterArr"
    query={include("./lib/downloadFilterArr.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="downloadFilterObj"
    query={include("./lib/downloadFilterObj.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="dummyDataArr"
    query={include("./lib/dummyDataArr.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="dummyDataObj"
    query={include("./lib/dummyDataObj.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
