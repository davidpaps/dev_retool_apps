<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Module
      id="eClaimModule1"
      name="EClaim Module"
      pageUuid="3538dc72-bdf8-11ef-9048-235b47931f18"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ tableData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="6fa0d"
      rowHeight="medium"
      searchTerm="{{ filterModule1.output1 }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="6fa0d"
        alignment="right"
        format="decimal"
        groupAggregationMode="countDistinct"
        key="id"
        label="ID"
        position="center"
        size={32}
        summaryAggregationMode="none"
      />
      <Column
        id="fe110"
        alignment="left"
        caption="{{ currentSourceRow.email }}"
        format="avatar"
        groupAggregationMode="none"
        key="email"
        label="User"
        position="center"
        referenceId="name"
        size={250}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.firstName }} {{ currentSourceRow.lastName }}"
      />
      <Column
        id="6a1c1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={72}
        summaryAggregationMode="none"
      />
      <Column
        id="ce73c"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
        position="center"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="0092e"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        position="center"
        size={96}
        summaryAggregationMode="none"
      />
      <Column
        id="6e4c2"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="teams"
        label="Teams"
        placeholder="Select options"
        position="center"
        size={260}
        summaryAggregationMode="none"
      />
      <Column
        id="173f6"
        alignment="left"
        format="link"
        groupAggregationMode="none"
        key="website"
        label="Website"
        position="center"
        size={200}
        summaryAggregationMode="none"
      />
      <Column
        id="5023d"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        key="text"
        label="Bio"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table1.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Configure Claim for {{ table1.selectedRow.name }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Checkbox
          id="checkbox1"
          formDataKey="enabled"
          label="Enabled"
          labelWidth="100"
          required={true}
        />
        <TextInput
          id="textInput1"
          formDataKey="website"
          label="Website"
          labelPosition="top"
          patternType="url"
          placeholder="retool.com"
          required={true}
          textBefore="https://"
        />
        <TextArea
          id="textArea1"
          formDataKey="text"
          label="Bio"
          labelWidth="10"
          minLines={2}
          placeholder="Enter value"
          required={true}
          value="{{ table1.selectedRow.text }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
    </Form>
    <Include src="./src/container1.rsx" />
  </Frame>
</App>
