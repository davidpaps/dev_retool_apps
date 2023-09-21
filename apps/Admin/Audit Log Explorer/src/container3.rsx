<Container
  id="container3"
  hidden=""
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle3"
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="5001a" viewKey="View 1">
    <Text
      id="text12"
      _disclosedFields={{ array: ["color"] }}
      heightType="fixed"
      style={{ ordered: [{ color: "primary" }] }}
      value="###### Audit events matching criteria"
      verticalAlign="center"
    />
    <Link
      id="link2"
      _disclosedFields={{ array: [] }}
      horizontalAlign="right"
      iconAfter="bold/interface-download-circle-alternate"
      showUnderline="never"
      text="Go to metadata"
    >
      <Event
        event="click"
        method="run"
        params={{ ordered: [{ src: "container4.scrollIntoView();" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Spacer id="spacer14" />
    <TableLegacy
      id="table1"
      _columns={[
        "createdAt",
        "Custom Column 1",
        "firstName",
        "lastName",
        "email",
        "id",
        "actionType",
        "pageName",
        "resourceName",
        "queryName",
        "metadata",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { "Custom Column 1": "" },
          { createdAt: "" },
          { pageName: "" },
          { actionType: "" },
          { queryName: "" },
          { resourceName: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { "Custom Column 1": "" },
          { createdAt: "" },
          { pageName: "" },
          { actionType: "" },
          { queryName: "" },
          { resourceName: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { firstName: false },
          { lastName: false },
          { email: false },
          { id: false },
          { metadata: false },
        ],
      }}
      _compatibilityMode={false}
      _disclosedFields={{ array: [] }}
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { createdAt: "left" },
          { pageName: "left" },
          { actionType: "left" },
          { queryName: "left" },
          { resourceName: "left" },
          { "Custom Column 2": "left" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "TextDataCell" },
          { createdAt: "DateTimeDataCell" },
          { pageName: "TextDataCell" },
          { actionType: "TextDataCell" },
          { queryName: "TextDataCell" },
          { resourceName: "TextDataCell" },
          { "Custom Column 2": "button" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "User Name" },
          { createdAt: "Timestamp" },
          { actionType: "Action Type" },
          { pageName: "App Name" },
          { queryName: "Query Name" },
          { resourceName: "Resource Name" },
          { "Custom Column 2": "Show Metadata" },
        ],
      }}
      columnMappers={{
        ordered: [
          {
            "Custom Column 1":
              "{{[currentRow.firstName, currentRow.lastName].join(' ')}}",
          },
          { actionType: "" },
          { "Custom Column 2": "see metadata" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { "Custom Column 1": { ordered: [] } },
          {
            createdAt: {
              ordered: [
                { manageTimeZone: true },
                { dateFormat: "MMM d, yyyy" },
                { valueTimeZone: "00:00" },
                { displayTimeZone: "local" },
              ],
            },
          },
          { pageName: { ordered: [] } },
          { actionType: { ordered: [] } },
          { queryName: { ordered: [] } },
          { resourceName: { ordered: [] } },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          { "Custom Column 2": { ordered: [{ buttonType: "action" }] } },
        ],
      }}
      columnWidths={[
        { object: { id: "createdAt", value: 174 } },
        { object: { id: "Custom Column 1", value: 129 } },
        { object: { id: "actionType", value: 123.75 } },
        { object: { id: "pageName", value: 175.4140625 } },
      ]}
      customButtonName="Download Raw Event Data"
      data="{{getFilteredAuditEvents.data}}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      emptyMessage="{{getFilteredAuditEventsCount.data == 0 ? 'No audit events found matching specified criteria' : 'Select a time window to get started'}}"
      events={[
        {
          ordered: [
            { event: "pageChange" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    src: "getFilteredAuditEvents.trigger();\ntable1.selectRow(null);",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      onCustomButtonPressQueryName="downloadFilteredAuditEvents"
      rowHeight="compact"
      serverPaginated={true}
      showBoxShadow={false}
      showCustomButton={true}
      showDownloadButton={false}
      showRefreshButton={false}
      style={{
        ordered: [
          { border: "rgb(224, 224, 224)" },
          { headerBackground: "surfacePrimary" },
          { headerAccent: "rgb(41, 181, 232)" },
          { cellAccent: "rgb(41, 181, 232)" },
          { toolbarAccent: "rgb(41, 181, 232)" },
          { selectedRowBackground: "rgba(41, 181, 232, 0.1)" },
          { hoverRowBackground: "rgba(0, 0, 0, 0.03)" },
        ],
      }}
      totalRowCount="{{getFilteredAuditEventsCount.data}}"
    />
    <Spacer id="spacer15" />
  </View>
</Container>
