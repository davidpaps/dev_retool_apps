<Container
  id="container4"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle4"
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="a37d6" viewKey="View 1">
    <Text
      id="text13"
      _disclosedFields={{ array: ["color"] }}
      heightType="fixed"
      style={{ ordered: [{ color: "primary" }] }}
      value="###### Metadata "
      verticalAlign="center"
    />
    <Link
      id="link3"
      _disclosedFields={{ array: [] }}
      horizontalAlign="right"
      iconAfter="bold/interface-upload-circle-alternate"
      showUnderline="never"
      text="Go to audit events"
    >
      <Event
        event="click"
        method="run"
        params={{ ordered: [{ src: "container5.scrollIntoView();" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Spacer id="spacer16" />
    <JSONExplorer
      id="jsonExplorer1"
      hidden="{{_.has(table1.selectedRow.data, 'metadata') ? false : true}}"
      value="{{table1.selectedRow.data.metadata}}"
    />
    <Divider
      id="divider4"
      _disclosedFields={{ array: [] }}
      hidden="{{_.has(table1.selectedRow.data, 'metadata') ? true : false}}"
    />
    <Spacer
      id="spacer23"
      hidden="{{_.has(table1.selectedRow.data, 'metadata') ? true : false}}"
    />
    <Text
      id="text15"
      _disclosedFields={{ array: [] }}
      hidden="{{_.has(table1.selectedRow.data, 'metadata') ? true : false}}"
      horizontalAlign="center"
      style={{
        ordered: [
          { color: "rgb(148, 148, 148)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value={
        '{{_.isUndefined(table1.selectedRow.data) ? "Select an audit event to see metadata" : "There\'s no metadata for action type" + table1.selectedRow.data.actionType}}'
      }
      verticalAlign="center"
    />
    <Spacer
      id="spacer24"
      hidden="{{_.has(table1.selectedRow.data, 'metadata') ? true : false}}"
    />
    <Divider
      id="divider3"
      _disclosedFields={{ array: [] }}
      hidden="{{_.has(table1.selectedRow.data, 'metadata') ? true : false}}"
    />
    <Spacer id="spacer17" />
  </View>
</Container>
