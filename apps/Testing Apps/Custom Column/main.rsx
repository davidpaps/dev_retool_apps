<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      primaryKeyColumnId="8fb60"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize={20}
    >
      <Column
        id="8fb60"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="2298c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        hidden="true"
        key="userId"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="fdc17"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true }}
        hidden="true"
        key="organizationId"
        label="Organization ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="14aa4"
        alignment="left"
        format="string"
        hidden="true"
        key="userAgent"
        label="User agent"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="f7293"
        alignment="left"
        format="string"
        hidden="true"
        key="ipAddress"
        label="Ip address"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="f28e9"
        alignment="left"
        format="string"
        hidden="true"
        key="geoLocation"
        label="Geo location"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="b5fdb"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        hidden="true"
        key="responseTimeMs"
        label="Response time ms"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="f388a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        key="actionType"
        label="Action type"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4d6c3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        key="pageName"
        label="Page name"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a0364"
        alignment="left"
        format="string"
        hidden="true"
        key="queryName"
        label="Query name"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="809eb"
        alignment="left"
        format="string"
        hidden="true"
        key="resourceName"
        label="Resource name"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="d8333"
        alignment="left"
        format="datetime"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={195}
      />
      <Column
        id="44603"
        alignment="left"
        editable={true}
        format="datetime"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={185}
      />
      <Column
        id="d059c"
        alignment="left"
        format="string"
        hidden="true"
        key="metadata"
        label="Metadata"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="fda38"
        alignment="left"
        format="string"
        formatOptions={{
          manageTimeZone: false,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
        }}
        label="Time Diff"
        placeholder="Enter value"
        position="center"
        referenceId="Time Diff"
        size={100}
        valueOverride="{{timeDiff(currentSourceRow.createdAt, currentSourceRow.updatedAt)}}"
      />
    </Table>
    <Button id="downloadRawData" styleVariant="solid" text="downloadRawData">
      <Event
        event="click"
        method="exportData"
        params={{
          ordered: [
            { options: { object: { fileName: "export", fileType: "csv" } } },
          ],
        }}
        pluginId="table1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
