<App>
  <GlobalWidgetOutput id="output1" value="{{ textInput1.value }}" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Button id="button1" text="Process Claims">
        <Event
          event="click"
          method="confetti"
          params={{ ordered: [] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Select
        id="select1"
        emptyMessage="No options"
        itemMode="static"
        label=""
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select a Claim Type to FIlter"
        showSelectionIndicator={true}
      >
        <Option id="e503c" value="Option 1" />
        <Option id="d2113" value="Option 2" />
        <Option id="d85e2" value="Option 3" />
      </Select>
      <Rating
        id="rating1"
        allowHalf={true}
        label=""
        labelPosition="top"
        max={5}
        value={4.5}
      />
      <Button
        id="button2"
        style={{ ordered: [] }}
        styleVariant="outline"
        text="Raise a Claim"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <TextInput
        id="textInput1"
        label=""
        labelPosition="top"
        placeholder="Search for a Claim"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
