<GlobalFunctions>
  <JavascriptQuery
    id="parent"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/parent.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="child"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/child.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="query3"
    allowedGroupIds={[3581330]}
    allowedGroups={["Builder"]}
    editorMode="gui"
    resourceDisplayName="retool_db"
    resourceName="758e4c69-3206-49a4-aca2-13a3160b9c13"
    runWhenModelUpdates={false}
  />
</GlobalFunctions>
