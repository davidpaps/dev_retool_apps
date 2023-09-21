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
  <RESTQuery
    id="query2"
    cacheKeyTtl="86400"
    enableCaching={true}
    headers={'[{"key":"","value":""},{"key":"","value":""}]'}
    query="restcountries.com/v3.1/name/{{select1.value}}"
    resourceDisplayName="HTTP REST"
    resourceName="88a8fe47-d0af-43c0-8b82-ea905fe2212c"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query3"
    query={include("./lib/query3.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{query3.data}}" }] }}
      pluginId="state1"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <State id="state1" value="On Load" />
</GlobalFunctions>
