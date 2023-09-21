<Modal
  id="AreYouSureModal"
  buttonText="Are you sure?"
  closeOnOutsideClick={true}
  events={[]}
  hidden="true"
  modalHeightType="auto"
  modalWidth="80%"
>
  <Alert
    id="alert1"
    description="You are about to pull in over {{numberInput1.value}} {{segmentedControl1.value}} of data. On heavily trafficked Retool instances, this can lead to noticeable performance degradataion for other users."
    events={[]}
    title="Caution"
    type="warning"
  />
  <Spacer id="spacer18" />
  <Link
    id="link4"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    iconBefore="bold/interface-content-book-alternate"
    showUnderline="hover"
    text="Learn More"
  >
    <Event
      event="click"
      method="run"
      params={{
        ordered: [{ src: "AreYouSureModal.close();\nHowItWorksModal.open();" }],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Link>
  <Spacer id="spacer19" />
  <Text
    id="text16"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    style={{ ordered: [{ color: "warning" }] }}
    value="#### Do you want to continue? "
    verticalAlign="center"
  />
  <Spacer id="spacer20" />
  <Button
    id="button7"
    _disclosedFields={{ array: [] }}
    style={{
      ordered: [
        { background: "warning" },
        { label: "" },
        { border: "" },
        { borderRadius: "" },
      ],
    }}
    styleVariant="solid"
    text="Yes, continue"
  >
    <Event
      event="click"
      method="run"
      params={{
        ordered: [
          { src: "runUserSearch.trigger();\nAreYouSureModal.close();" },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="button8"
    _disclosedFields={{ array: [] }}
    styleVariant="solid"
    text="No, revert filter"
  >
    <Event
      event="click"
      method="run"
      params={{
        ordered: [
          {
            src: "segmentedControl1.setValue('minutes');\nnumberInput1.setValue(5);\nAreYouSureModal.close();",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
