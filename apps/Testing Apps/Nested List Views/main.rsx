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
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Get Final Payload"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatPayload"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Slider
      id="slider2"
      _disclosedFields={{ array: [] }}
      label="# Child List Views"
      max={5}
      min="1"
      step={1}
      value="1"
    />
    <Slider
      id="slider1"
      _disclosedFields={{ array: [] }}
      label="# Parent List Views"
      max={5}
      min="1"
      step={1}
      value="1"
    />
    <ListView
      id="listView1"
      instances="{{slider1.value}}"
      itemHeight=""
      rowKeys="{{_.range(slider1.value)}}"
    >
      <Text
        id="text1"
        _disclosedFields={{ array: [] }}
        value="#### Parent #{{ri[0] + 1}}"
        verticalAlign="center"
      />
      <TextInput
        id="textInput1"
        _disclosedFields={{ array: [] }}
        label="{{text1.value}} Text Input"
        placeholder="Text"
      />
      <NumberInput
        id="numberInput1"
        _disclosedFields={{ array: [] }}
        currency="USD"
        inputValue={0}
        label="{{text1.value}} Number Input"
        placeholder="Enter value"
        showSeparators={true}
        showStepper={true}
        value={0}
      />
      <Select
        id="select1"
        emptyMessage="No options"
        itemMode="static"
        label="{{text1.value}} Select Input"
        overlayMaxHeight={375}
        placeholder="Select"
        showSelectionIndicator={true}
      >
        <Option id="f31a8" label="Option 1" value="Option 1" />
        <Option id="1c2cc" label="Option 2" value="Option 2" />
      </Select>
      <ListView
        id="listView2"
        instances="{{slider2.value}}"
        rowKeys="{{_.range(slider2.value)}}"
        showDropShadow={false}
      >
        <Text
          id="text2"
          _disclosedFields={{ array: [] }}
          value="##### Child # {{ri[1] + 1}}"
          verticalAlign="center"
        />
        <TextInput
          id="textInput2"
          _disclosedFields={{ array: [] }}
          label="{{text2.value}} Text Input"
          placeholder="Text"
        />
        <NumberInput
          id="numberInput2"
          _disclosedFields={{ array: [] }}
          currency="USD"
          inputValue={0}
          label="{{text2.value}} Number Input"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <Select
          id="select2"
          emptyMessage="No options"
          itemMode="static"
          label="{{text2.value}} Select Input"
          overlayMaxHeight={375}
          placeholder="Select"
          showSelectionIndicator={true}
        >
          <Option id="f31a8" label="Option 1" value="Option 1" />
          <Option id="1c2cc" label="Option 2" value="Option 2" />
          <Option
            id="ea381"
            disabled={false}
            hidden={false}
            label="Option 3"
            value="Option 3"
          />
          <Option
            id="33736"
            disabled={false}
            hidden={false}
            label="Option 4"
            value="Option 4"
          />
        </Select>
      </ListView>
    </ListView>
  </Frame>
</App>
