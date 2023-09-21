<GlobalFunctions>
  <State
    id="auditEventsCatalog"
    value={
      '[\n  {\n    "description": "Query runs",\n    "id": "QUERY_RUN"\n  },\n  {\n    "description": "Query previews",\n    "id": "QUERY_PREVIEW"\n  },\n  {\n    "description": "Page views",\n    "id": "PAGE_VIEW"\n  },\n  {\n    "description": "User logs in",\n    "id": "LOGIN"\n  },\n  {\n    "description": "User logs out",\n    "id": "LOGOUT"\n  },\n  {\n    "description": "User signs up",\n    "id": "SIGN_UP"\n  },\n  {\n    "description": "User redeems an invite",\n    "id": "REDEEM_INVITE"\n  },\n  {\n    "description": "User invites another user",\n    "id": "INVITE_USER"\n  },\n  {\n    "description": "User re-sends invite",\n    "id": "RE_INVITE_USER"\n  },\n  {\n    "description": "User runs a query in the Query Library",\n    "id": "PLAYGROUND_QUERY_RUN"\n  },\n  {\n    "description": "User disables two-factor authentication",\n    "id": "DISABLE_TWO_FACTOR_AUTH"\n  },\n  {\n    "description": "User requests a password reset link",\n    "id": "REQUEST_PASSWORD_RESET_LINK"\n  },\n  {\n    "description": "User requests passwordless login",\n    "id": "REQUEST_PASSWORDLESS_LOGIN"\n  },\n  {\n    "description": "User confirms a password reset request",\n    "id": "CONFIRM_PASSWORD_RESET_LINK"\n  },\n  {\n    "description": "User creates a group",\n    "id": "CREATE_GROUP"\n  },\n  {\n    "description": "User updates a group",\n    "id": "UPDATE_GROUP"\n  },\n  {\n    "description": "User deletes a group",\n    "id": "DELETE_GROUP"\n  },\n  {\n    "description": "User adds other users to a group",\n    "id": "ADD_USERS_TO_GROUP"\n  },\n  {\n    "description": "User removes other users from a group",\n    "id": "REMOVE_USERS_FROM_GROUP"\n  },\n  {\n    "description": "User enables another user",\n    "id": "ENABLE_USER"\n  },\n  {\n    "description": "User updates an organization",\n    "id": "UPDATE_ORGANIZATION"\n  },\n  {\n    "description": "User creates a resource",\n    "id": "CREATE_RESOURCE"\n  },\n  {\n    "description": "User deletes a resource",\n    "id": "DELETE_RESOURCE"\n  },\n  {\n    "description": "User exports a page",\n    "id": "PAGE_EXPORT"\n  },\n  {\n    "description": "User creates a workflow",\n    "id": "CREATE_WORKFLOW"\n  },\n  {\n    "description": "User deletes a workflow",\n    "id": "DELETE_WORKFLOW"\n  },\n  {\n    "description": "User releases a workflow",\n    "id": "RELEASE_WORKFLOW"\n  },\n  {\n    "description": "User enables a workflow",\n    "id": "ENABLE_WORKFLOW"\n  },\n  {\n    "description": "User disables a workflow",\n    "id": "DISABLE_WORKFLOW"\n  }\n]'
    }
  />
  <SqlQueryUnified
    id="downloadFilteredAuditEvents"
    query={include("./lib/downloadFilteredAuditEvents.sql", "string")}
    queryTimeout="120000"
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="exportData"
      params={{
        ordered: [
          { fileType: "csv" },
          { data: "{{downloadFilteredAuditEvents.data}}" },
          {
            fileName:
              "audit_events_export_{{new URL(urlparams.href).hostname}}_{{moment().toISOString()}}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="filterApps"
    query={include("./lib/filterApps.sql", "string")}
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterResourceNames"
    query={include("./lib/filterResourceNames.sql", "string")}
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterUsers"
    query={include("./lib/filterUsers.sql", "string")}
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getFilteredAuditEvents"
    query={include("./lib/getFilteredAuditEvents.sql", "string")}
    queryTimeout="120000"
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getFilteredAuditEventsCount"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getFilteredAuditEventsCount"
    enableTransformer={true}
    query={include("./lib/getFilteredAuditEventsCount.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.count[0]"
    warningCodes={[]}
  />
  <Function
    id="isExpensiveQuery"
    funcBody={include("./lib/isExpensiveQuery.js", "string")}
  />
  <SqlQueryUnified
    id="limitQueryNames"
    query={include("./lib/limitQueryNames.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Local DB"
    resourceName="2b24fe5e-2a0b-4cb7-99cb-b4f311cc1c5a"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="runUserSearch"
    query={include("./lib/runUserSearch.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
