<Container
  id="container2"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Text
      id="containerTitle2"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="bbeb8" viewKey="View 1">
    <Text
      id="text21"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{
        ordered: [{ color: "primary" }, { background: "" }, { links: "" }],
      }}
      value="**App usage**"
      verticalAlign="center"
    />
    <Spacer id="spacer1" />
    <Divider id="divider8" _disclosedFields={{ array: [] }} />
    <Spacer id="spacer2" />
    <Statistic
      id="PageSaveStatistic"
      _disclosedFields={{ array: [] }}
      decimalPlaces="2"
      label="App saves "
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
      secondaryValue="{{ getSummaryAnalytics.data.pct_growth_page_saves[0] }}"
      showSeparators={true}
      tooltipText="Total number of app saves across all apps during this time period"
      value="{{getSummaryAnalytics.data.count_current_page_saves[0] }}"
    />
    <Statistic
      id="PageViewStatistic"
      _disclosedFields={{ array: [] }}
      currency="USD"
      label="App views"
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
      secondaryValue="{{ getSummaryAnalytics.data.pct_growth_page_views[0] }}"
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      tooltipText="Total number of app views across all apps during this time period"
      value="{{ getSummaryAnalytics.data.count_current_page_views[0] }}"
    />
    <Spacer id="spacer3" />
    <Divider id="divider9" _disclosedFields={{ array: [] }} />
    <Text
      id="text4"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "" }, { background: "" }, { links: "" }] }}
      tooltipText="Total count of unique apps who have had at least one query run on them during a given month"
      value="**Active apps**"
      verticalAlign="center"
    />
    <PlotlyChart
      id="MAAChart"
      chartType="line"
      data={include("../lib/MAAChart.data.json", "string")}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{ getAppsOverTime.data }}"
      isLayoutJsonDirty={true}
      layout={include("../lib/MAAChart.layout.json", "string")}
      shouldShowLegend={false}
      xAxis="{{ getAppsOverTime.data .day}}"
      xAxisDropdown="day"
    />
  </View>
</Container>
