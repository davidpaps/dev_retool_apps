<GlobalFunctions>
  <SqlQueryUnified
    id="getQueryCount"
    query={include("./lib/getQueryCount.sql", "string")}
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUsersQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getUsersQuery"
    query={include("./lib/getUsersQuery.sql", "string")}
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <State id="pageSize" value="1" />
</GlobalFunctions>
