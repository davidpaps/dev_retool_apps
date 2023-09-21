<Container
  id="container5"
  hoistFetching={true}
  showBody={true}
  style={{
    ordered: [
      { background: "rgba(255, 255, 255, 1)" },
      { border: "rgba(209, 209, 209, 0)" },
    ],
  }}
>
  <Header>
    <Text
      id="containerTitle5"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="26911" viewKey="View 1">
    <Text
      id="text33"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      heightType="fixed"
      value="##### {{AppTable.selectedRow.data.name}}"
      verticalAlign="center"
    />
    <Text
      id="text34"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      heightType="fixed"
      style={{ ordered: [{ color: "rgb(151, 151, 151)" }] }}
      value={
        'Created at {{moment(AppTable.selectedRow.data.created_at).format("LLL")}}'
      }
    />
    <Divider id="divider16" _disclosedFields={{ array: [] }} />
    <Text
      id="text32"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "" }, { background: "" }, { links: "" }] }}
      value="**App metrics**"
      verticalAlign="center"
    />
    <PlotlyChart
      id="AppMetricsChart"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "App saves" },
                {
                  datasource:
                    "{{  getAppMetricsOverTime.data ['count_page_saves']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#DAECFC" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "App views" },
                {
                  datasource:
                    "{{  getAppMetricsOverTime.data ['count_page_views']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#55A1E3" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{  getAppMetricsOverTime.data }}"
      hidden="{{  getAppMetricsOverTime.data.count_page_saves.length === 0 && getAppMetricsOverTime.data.count_page_views.length === 0}}"
      isDataTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/AppMetricsChart.layout.json", "string")}
      xAxis="{{  getAppMetricsOverTime.data .week}}"
      xAxisDropdown="week"
      xAxisType="date"
    />
    <Container
      id="container7"
      heightType="fixed"
      hidden="{{  getAppMetricsOverTime.data.count_page_saves.length > 0 || getAppMetricsOverTime.data.count_page_views.length > 0}}"
      hoistFetching={true}
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle7"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f5d1c" viewKey="View 1">
        <Text
          id="text42"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          style={{ ordered: [{ color: "rgba(146, 146, 146, 1)" }] }}
          value="No data"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Spacer id="spacer8" />
    <Divider id="divider17" _disclosedFields={{ array: [] }} />
    <Text
      id="text35"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      style={{ ordered: [{ color: "" }, { background: "" }, { links: "" }] }}
      value="**Top 5 viewers**"
      verticalAlign="center"
    />
    <ListView
      id="TopViewersForAppList"
      heightType="fixed"
      instances="{{ getTopUsersOfApp.data.count_page_views.length <= 5 ? getTopUsersOfApp.data.count_page_views.length : 5}}"
      itemHeight=""
      overflowType="visible"
      scroll={false}
      showBorder={false}
      showDropShadow={false}
      style={{
        ordered: [
          { "primary-background": "rgba(255, 255, 255, 0)" },
          { "border-color": "rgba(255, 255, 255, 1)" },
          { "primary-surface": "rgba(255, 255, 255, 0)" },
        ],
      }}
    >
      <Text
        id="text30"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="{{ getTopUsersOfApp.data.user_name[i] }} "
      />
      <Text
        id="text31"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        horizontalAlign="right"
        style={{ ordered: [{ color: "rgb(151, 151, 151)" }] }}
        value="{{ getTopUsersOfApp.data.count_page_views[i] }} views"
        verticalAlign="center"
      />
    </ListView>
    <Divider id="divider15" _disclosedFields={{ array: [] }} />
    <Text
      id="text36"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      style={{ ordered: [{ color: "" }, { background: "" }, { links: "" }] }}
      value="**Top 5 contributors**"
      verticalAlign="center"
    />
    <ListView
      id="TopEditorsForAppList"
      heightType="fixed"
      instances="{{ getTopBuildersOfApp.data.user_name.length <= 5 ? getTopBuildersOfApp.data.user_name.length  : 5 }}  "
      itemHeight=""
      overflowType="visible"
      scroll={false}
      showBorder={false}
      showDropShadow={false}
      style={{
        ordered: [
          { "primary-background": "rgba(255, 255, 255, 0)" },
          { "border-color": "rgba(255, 255, 255, 0)" },
          { "primary-surface": "rgba(255, 255, 255, 0)" },
        ],
      }}
    >
      <Text
        id="text28"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="{{ getTopBuildersOfApp.data.user_name[i] }}  "
        verticalAlign="center"
      />
      <Text
        id="text29"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        horizontalAlign="right"
        style={{ ordered: [{ color: "rgb(151, 151, 151)" }] }}
        value="{{ getTopBuildersOfApp.data.count_page_saves[i] }} saves"
        verticalAlign="center"
      />
    </ListView>
  </View>
</Container>
