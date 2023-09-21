<Container
  id="container6"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Text
      id="containerTitle6"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="e9e15" viewKey="View 1">
    <Text
      id="text37"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="##### {{UsersTable.selectedRow.data.name}}"
      verticalAlign="center"
    />
    <Text
      id="text38"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(151, 151, 151)" }] }}
      value={
        'Last logged in: {{moment(UsersTable.selectedRow.data.last_logged_in).format("LLL")}}'
      }
      verticalAlign="center"
    />
    <Divider id="divider18" _disclosedFields={{ array: [] }} />
    <Text
      id="text39"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="**User metrics**"
      verticalAlign="center"
    />
    <Container
      id="container8"
      heightType="fixed"
      hidden="{{  getUserMetricsOverTime.data.count_page_saves.length > 0 || getUserMetricsOverTime.data.count_page_views.length > 0}}"
      hoistFetching={true}
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle8"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f5d1c" viewKey="View 1">
        <Text
          id="text43"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          horizontalAlign="center"
          style={{ ordered: [{ color: "rgba(146, 146, 146, 1)" }] }}
          value="No data"
          verticalAlign="center"
        />
      </View>
    </Container>
    <PlotlyChart
      id="UserMetricsChart"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "App saves" },
                {
                  datasource:
                    "{{ getUserMetricsOverTime.data['count_page_saves']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#AED6BD" },
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
                    "{{ getUserMetricsOverTime.data['count_page_views']}}",
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
      datasourceJS="{{ getUserMetricsOverTime.data}}"
      hidden="{{  getUserMetricsOverTime.data.count_page_saves.length === 0 && getUserMetricsOverTime.data.count_page_views.length ===  0}}"
      isDataTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/UserMetricsChart.layout.json", "string")}
      xAxis="{{ getUserMetricsOverTime.data.week}}"
      xAxisDropdown="week"
      xAxisType="date"
    />
    <Spacer id="spacer9" />
    <Divider id="divider19" _disclosedFields={{ array: [] }} />
    <Text
      id="text40"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      value="**Top 5 most viewed apps**"
      verticalAlign="center"
    />
    <ListView
      id="TopViewedAppsForUserList"
      heightType="fixed"
      instances="{{ getTopViewedAppsOfUser.data.count_page_views.length <= 5 ? getTopViewedAppsOfUser.data.count_page_views.length : 5}}"
      itemHeight="1"
      overflowType="visible"
      scroll={false}
      showBorder={false}
      showDropShadow={false}
    >
      <Text
        id="text24"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="{{ getTopViewedAppsOfUser.data.page_name[i] }} "
        verticalAlign="center"
      />
      <Text
        id="text25"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        horizontalAlign="right"
        style={{ ordered: [{ color: "rgb(151, 151, 151)" }] }}
        value="{{ getTopViewedAppsOfUser.data.count_page_views[i] }} views"
      />
    </ListView>
    <Divider id="divider20" _disclosedFields={{ array: [] }} />
    <Text
      id="text41"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      value="**Top 5 most edited apps**"
      verticalAlign="center"
    />
    <ListView
      id="TopEditedAppsForUserList"
      heightType="fixed"
      instances="{{ getTopBuiltAppsOfUser.data.count_page_saves.length <= 5 ? getTopBuiltAppsOfUser.data.count_page_saves.length : 5}}"
      itemHeight="1"
      overflowType="visible"
      scroll={false}
      showBorder={false}
      showDropShadow={false}
    >
      <Text
        id="text26"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="{{ getTopBuiltAppsOfUser.data.page_name[i] }} "
      />
      <Text
        id="text27"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        horizontalAlign="right"
        style={{ ordered: [{ color: "rgb(151, 151, 151)" }] }}
        value="{{ getTopBuiltAppsOfUser.data.count_page_saves[i] }} saves"
      />
    </ListView>
  </View>
</Container>
