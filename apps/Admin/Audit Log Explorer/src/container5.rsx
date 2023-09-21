<Container
  id="container5"
  heightType="fixed"
  hidden=""
  overflowType="hidden"
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle5"
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="d44f2" viewKey="View 1">
    <DateTime
      id="dateTime1"
      _disclosedFields={{ array: ["iconBefore"] }}
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      iconBefore="bold/interface-calendar"
      label="Start time in {{moment.tz.guess()}}"
      labelPosition="top"
      manageTimeZone={true}
      minuteStep={15}
      style={{
        ordered: [
          { background: "" },
          { border: "" },
          { adornmentBackground: "" },
          { text: "" },
          { borderRadius: "" },
          { accent: "" },
          { sharedValidation: "" },
        ],
      }}
      value="{{ moment(new Date()).subtract(5, 'minutes') }}"
      valueTimeZone="00:00"
    />
    <Spacer id="spacer21" />
    <Select
      id="segmentedControl1"
      emptyMessage="No options"
      itemMode="static"
      label="Units"
      labelPosition="top"
      labelWidth="20"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      style={{
        ordered: [
          { background: "" },
          { border: "" },
          { borderRadius: "" },
          { sharedValidation: "" },
        ],
      }}
      value="minutes"
    >
      <Option id="27e2f" label="Seconds" value="seconds" />
      <Option id="153ff" label="Minutes" value="minutes" />
      <Option id="2b5aa" disabled={false} label="Hours" value="hours" />
      <Option
        id="dae37"
        disabled={false}
        hidden={false}
        label="Days"
        value="days"
      />
      <Option
        id="4ee16"
        disabled={false}
        hidden={false}
        label="Weeks"
        value="weeks"
      />
      <Option
        id="0a1a2"
        disabled={false}
        hidden={false}
        label="Months"
        value="months"
      />
    </Select>
    <NumberInput
      id="numberInput1"
      _disclosedFields={{ array: [] }}
      currency="USD"
      hideLabel={false}
      inputValue={0}
      label="Duration"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="5"
    />
  </View>
</Container>
