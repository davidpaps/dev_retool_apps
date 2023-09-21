<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="### Array of Objects"
      verticalAlign="center"
    />
    <TableLegacy
      id="arrTable"
      _compatibilityMode={false}
      customButtonName="Download Filtered Data"
      data="{{dummyDataArr.data}}"
      doubleClickToEdit={true}
      downloadRawData={true}
      onCustomButtonPressQueryName="downloadFilterArr"
      showBoxShadow={false}
      showCustomButton={true}
      showRefreshButton={false}
    />
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      value="### Object of Arrays"
      verticalAlign="center"
    />
    <TableLegacy
      id="objTable"
      _columns={["id", "num", "Custom Column 1"]}
      _columnVisibility={{ ordered: [{ "Custom Column 1": true }] }}
      _compatibilityMode={false}
      calculatedColumns={["Custom Column 1"]}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnMappers={{
        ordered: [{ "Custom Column 1": "{{currentRow.num + currentRow.id}}" }],
      }}
      customButtonName="Download Filtered Data"
      data="{{dummyDataObj.data}}"
      doubleClickToEdit={true}
      downloadRawData={true}
      onCustomButtonPressQueryName="downloadFilterObj"
      showBoxShadow={false}
      showCustomButton={true}
      showRefreshButton={false}
    />
  </Frame>
</App>
