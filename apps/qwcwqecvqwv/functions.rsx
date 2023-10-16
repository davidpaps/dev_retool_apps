<GlobalFunctions>
  <JavascriptQuery
    id="tableData"
    query={include("./lib/tableData.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
  />
  <JavascriptQuery
    id="table1ClickToolbarHandler"
    query={include("./lib/table1ClickToolbarHandler.js", "string")}
    resourceName="JavascriptQuery"
  />
</GlobalFunctions>
