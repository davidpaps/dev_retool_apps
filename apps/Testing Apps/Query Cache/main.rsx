<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Select
      id="select1"
      emptyMessage="No options"
      hideLabel={true}
      itemMode="static"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="f07e7" value="Chile" />
      <Option id="fb408" value="Brazil" />
      <Option id="6c207" disabled={false} hidden={false} value="Germany" />
    </Select>
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Button"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="### From Cache: {{query2.servedFromCache}}"
      verticalAlign="center"
    />
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      value="{{ state1.value[0].flag }}"
      verticalAlign="center"
    />
    <JSONExplorer id="jsonExplorer1" value="{{query3.data}}" />
  </Frame>
</App>
