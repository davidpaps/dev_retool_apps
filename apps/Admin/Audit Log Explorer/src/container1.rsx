<Container
  id="container1"
  hidden=""
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="d44f2" viewKey="View 1">
    <Multiselect
      id="userFilter"
      captionByIndex="{{ item.email }}"
      data="{{ filterUsers.data }}"
      disabled=""
      hidden=""
      label="Users"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      maxLines="8"
      minLines="1"
      overlayMaxHeight={375}
      placeholder="Select users"
      showClear={true}
      showSelectionIndicator={true}
      tooltipText="Search for users by name or email"
      values="{{ item.id }}"
    />
    <Multiselect
      id="appFilter"
      captionByIndex=""
      data="{{ filterApps.data }}"
      disabled=""
      hidden=""
      label="Applications"
      labelPosition="top"
      labels=""
      maxLines="8"
      minLines="1"
      overlayMaxHeight={375}
      placeholder="Select apps"
      showClear={true}
      showSelectionIndicator={true}
      tooltipText="Search for apps by name"
      values="{{item.name}}"
    />
    <Multiselect
      id="actionTypeFilter"
      captionByIndex="{{ item.description }}"
      data="{{auditEventsCatalog.value}}"
      disabled=""
      emptyMessage="No options"
      hidden=""
      label="Action Type"
      labelPosition="top"
      labels=""
      maxLines="2"
      minLines="1"
      overlayMaxHeight={375}
      placeholder="Select actions"
      showClear={true}
      showSelectionIndicator={true}
      tooltipText="See our [docs](https://docs.retool.com/docs/audit-logs) for a list of tracked events"
      values="{{ item.id }}"
    />
    <Spacer id="spacer22" />
    <Button
      id="button6"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ background: "rgb(219, 219, 219)" }] }}
      styleVariant="solid"
      text="Clear filters"
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "userFilter.clearValue();\nappFilter.clearValue();\nactionTypeFilter.clearValue();\nresourceNameFilter.clearValue();\nqueryNameFilter.clearValue();",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Multiselect
      id="queryNameFilter"
      data="{{ limitQueryNames.data }}"
      disabled=""
      emptyMessage="Begin a search to see query names to filter by"
      hidden=""
      label="Query Name"
      labelPosition="top"
      labels=""
      maxLines="2"
      minCount=""
      minLines="1"
      overlayMaxHeight={375}
      placeholder="Select queries to narrow your search"
      showClear={true}
      showSelectionIndicator={true}
      tooltipText="Name of the query associated with the event as it appears in the Retool Editor"
      values="{{ item.queryName }}"
    >
      <Option id="22f1b" value="Option 1" />
      <Option id="0c68b" value="Option 2" />
      <Option id="8d57d" value="Option 3" />
    </Multiselect>
    <Multiselect
      id="resourceNameFilter"
      captionByIndex="Folder: {{ item.folderName }} | Type: {{ item.type }}"
      data="{{ filterResourceNames.data }}"
      disabled=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hidden=""
      label="Resource Name"
      labelPosition="top"
      labels="{{ item.displayName }}"
      maxLines="2"
      minLines="1"
      overlayMaxHeight={375}
      placeholder="Select resources"
      showClear={true}
      showSelectionIndicator={true}
      tooltipText="Plaintext name of the resource associated with the event"
      values="{{ item.name }}"
    />
    <Button
      id="button1"
      _disclosedFields={{ array: ["iconAfter"] }}
      iconAfter="bold/interface-arrows-right"
      styleVariant="solid"
      text="Go"
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "if (isExpensiveQuery.value == true) {\n  AreYouSureModal.open();\n} else {\n  runUserSearch.trigger();\n}",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
