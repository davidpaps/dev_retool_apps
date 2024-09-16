<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ListViewBeta
      id="parentList"
      _primaryKeys="{{ i }}"
      data="{{ parent.data }}"
      enableInstanceValues={true}
      heightType="auto"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Checkbox
        id="checkbox1"
        label="Parent"
        labelWidth="100"
        value="{{ parent.data[i] }}"
      />
      <ListViewBeta
        id="listView2"
        _primaryKeys="{{ i }}"
        data="{{ child.data }}"
        enableInstanceValues={true}
        heightType="auto"
        itemWidth="200px"
        margin="0"
        numColumns={3}
        padding="0"
      >
        <Checkbox
          id="checkbox2"
          labelWidth="100"
          value="{{ checkbox1.value }}"
        />
      </ListViewBeta>
    </ListViewBeta>
  </Frame>
</App>
