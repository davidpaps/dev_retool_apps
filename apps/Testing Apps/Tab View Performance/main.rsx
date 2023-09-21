<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="4838a" value="Tab 1" />
          <Option id="cada3" value="Tab 2" />
          <Option id="cd3d4" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="6b11b" viewKey="View 1">
        <TableLegacy
          id="table1"
          _compatibilityMode={false}
          customButtonName=""
          data={
            '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
          }
          doubleClickToEdit={true}
          showBoxShadow={false}
        />
      </View>
      <View id="1d471" viewKey="View 2">
        <TableLegacy
          id="table2"
          _compatibilityMode={false}
          columnColors={{
            ordered: [{ id: "" }, { name: "" }, { email: "" }, { sales: "" }],
          }}
          customButtonName=""
          data="{{query2.data}}"
          doubleClickToEdit={true}
          showBoxShadow={false}
        />
      </View>
      <Event
        enabled={'{{tabbedContainer1.currentViewKey === "View 2"}}'}
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
  </Frame>
</App>
