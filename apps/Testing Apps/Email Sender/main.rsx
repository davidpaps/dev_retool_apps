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
      heightType="fixed"
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
          <Option id="405f3" value="Tab 1" />
          <Option id="e094e" value="Tab 2" />
          <Option id="dc1ab" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="39a46" viewKey="Template 1">
        <TextEditor id="richTextEditor1" value="Email Text for Template 1" />
      </View>
      <View id="79910" viewKey="Template 2">
        <TextEditor id="richTextEditor2" value="Email Text for Template 2" />
      </View>
      <View
        id="82416"
        viewKey="Template 3
"
      >
        <TextEditor id="richTextEditor3" value="Email Text for Template 3" />
      </View>
    </Container>
    <TableLegacy
      id="table1"
      _columnVisibility={{ ordered: [{ sales: false }, { id: false }] }}
      _compatibilityMode={false}
      allowMultiRowSelect={true}
      customButtonName=""
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Cher Actor",\n  "email": "cher@example.com",\n  "sales": 424\n}, {\n  "id": 5,\n  "name": "Erica Widget",\n  "email": "erica@widget.org",\n  "sales": 243\n}]'
      }
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Send Email!"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatEmailAddresses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatEmailBody"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SendEmail"
        type="datasource"
        waitMs="1000"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
