<GlobalFunctions>
  <JavascriptQuery
    id="query1"
    query={include("./lib/query1.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query2"
    query={include("./lib/query2.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
