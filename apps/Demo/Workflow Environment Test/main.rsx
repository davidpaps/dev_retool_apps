<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Button
      id="button1"
      styleVariant="solid"
      text="Send Environment to Workflow"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendWorkflowRequest"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <JSONExplorer id="jsonExplorer1" value="{{sendWorkflowRequest.data}}" />
  </Frame>
</App>
