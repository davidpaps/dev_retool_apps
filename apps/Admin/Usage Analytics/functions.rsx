<GlobalFunctions>
  <Folder id="overview">
    <SqlQueryUnified
      id="getAppsOverTime"
      query={include("./lib/getAppsOverTime.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getSummaryAnalytics"
      query={include("./lib/getSummaryAnalytics.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUsersOverTime"
      query={include("./lib/getUsersOverTime.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="pages">
    <SqlQueryUnified
      id="getAppMetricsOverTime"
      query={include("./lib/getAppMetricsOverTime.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getApps"
      query={include("./lib/getApps.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer=""
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTopBuildersOfApp"
      query={include("./lib/getTopBuildersOfApp.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTopUsersOfApp"
      query={include("./lib/getTopUsersOfApp.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="users">
    <SqlQueryUnified
      id="getTopBuiltAppsOfUser"
      query={include("./lib/getTopBuiltAppsOfUser.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTopViewedAppsOfUser"
      query={include("./lib/getTopViewedAppsOfUser.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUserMetricsOverTime"
      query={include("./lib/getUserMetricsOverTime.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUsers"
      query={include("./lib/getUsers.sql", "string")}
      queryTimeout="120000"
      resourceDisplayName="Local DB"
      resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <Function
    id="currentTimeRange"
    funcBody={include("./lib/currentTimeRange.js", "string")}
  />
  <SqlQueryUnified
    id="organizationIds"
    enableTransformer={true}
    query={include("./lib/organizationIds.sql", "string")}
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.id"
    warningCodes={[]}
  />
  <State id="todaysDate" value="{{ moment().format('YYYY-MM-DD') }}" />
  <State
    id="userActions"
    value="['LOGIN', 'LOGOUT', 'REDEEM_INVITE', 'SIGN_UP', 'PAGE_VIEW', 'PAGE_EXPORT', 'QUERY_PREVIEW', 'PLAYGROUND_QUERY_RUN', 'CREATE_RESOURCE', 'UPDATE_RESOURCE', 'DELETE_RESOURCE']"
  />
</GlobalFunctions>
