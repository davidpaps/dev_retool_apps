<Container
  id="container4"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Text
      id="containerTitle4"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="bbeb8" viewKey="View 1">
    <Text
      id="text23"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{
        ordered: [
          { color: "primary" },
          { background: "" },
          { links: "primary" },
        ],
      }}
      value="**Active users**"
      verticalAlign="center"
    />
    <Spacer id="spacer4" />
    <Divider id="divider10" _disclosedFields={{ array: [] }} />
    <Spacer id="spacer5" />
    <Statistic
      id="UserStatistic"
      _disclosedFields={{ array: [] }}
      currency="USD"
      label="Users "
      labelCaption={
        '{{ moment(DateRange.value.start).format("MM/DD/YY")}}-{{ moment(DateRange.value.end).format("MM/DD/YY") }}'
      }
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="{{ getSummaryAnalytics.data.pct_growth_users[0] }}"
      showSeparators={true}
      tooltipText="Total number of unique users who have accessed Retool during this period. "
      value="{{getSummaryAnalytics.data.count_current_users[0] }}"
    />
    <Statistic
      id="UserStatistic2"
      _disclosedFields={{ array: [] }}
      currency="USD"
      label="Users (trailing 30 days)"
      labelCaption="Since last period"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="{{ getSummaryAnalytics.data.pct_growth_t30_users[0] }}"
      showSeparators={true}
      tooltipText="Total number of unique users who have accessed Retool during the last 30 days."
      value="{{ getSummaryAnalytics.data.count_t30_users[0] }}"
    />
    <Spacer id="spacer6" />
    <Divider id="divider11" _disclosedFields={{ array: [] }} />
    <Text
      id="text22"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "" }, { background: "" }, { links: "" }] }}
      tooltipText="Total count of unique users who have run at least one query during a given month."
      value="**Active users**"
      verticalAlign="center"
    />
    <PlotlyChart
      id="MAUChart"
      chartType="line"
      data={include("../lib/MAUChart.data.json", "string")}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{ getUsersOverTime.data }}"
      isLayoutJsonDirty={true}
      layout={include("../lib/MAUChart.layout.json", "string")}
      shouldShowLegend={false}
      xAxis="{{ getUsersOverTime.data .day}}"
      xAxisDropdown="day"
    />
  </View>
</Container>
