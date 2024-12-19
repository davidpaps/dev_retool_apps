<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle1" value="### Claim Spread" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Chart
      id="mixedChart1"
      barGap={0.4}
      barMode="group"
      chartType="mixed"
      legendPosition="none"
      selectedPoints="[]"
      showSecondYAxis={true}
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      yAxis2Grid={true}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
    >
      <Series
        id="0"
        aggregationType="none"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }} "
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Line"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData={{
          array: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
          ],
        }}
        xDataMode="manual"
        yAxis="y2"
        yData={{
          array: [
            525.25, 526.8, 529.45, 532.2, 537.05, 540, 543.05, 542.2, 546.45,
            541.8, 544.25, 555.8, 549.45, 562.2, 558.05, 574, 574.05, 579.2,
            570.45, 582.8, 575.25, 600.8, 581.45, 586.2, 584.05, 603, 614.05,
            620.2, 634.45, 611.8,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
      <Series
        id="1"
        aggregationType="none"
        colorArray={{ array: ["{{ theme.danger }}"] }}
        colorArrayDropDown={{ array: ["{{ theme.danger }}"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.danger }}"
        markerSize={4}
        markerSymbol="circle"
        name="Scatter"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="scatter"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData={{
          array: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
          ],
        }}
        xDataMode="manual"
        yAxis="y"
        yData={{
          array: [
            102.75, 102.2, 99.55, 93.8, 96.95, 97, 90.95, 94.8, 104.55, 87.2,
            96.75, 104.2, 86.55, 90.8, 83.95, 91, 72.95, 86.8, 75.55, 74.2,
            94.75, 84.2, 79.55, 55.8, 60.95, 68, 52.95, 71.8, 84.55, 40.2,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
      <Series
        id="2"
        aggregationType="none"
        colorArray={{ array: ["#rgba(126, 132, 250, 0.3)"] }}
        colorArrayDropDown={{ array: ["#rgba(126, 132, 250, 0.3)"] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="source"
        decreasingBorderColor="{{ theme.danger }}"
        decreasingColor="{{ theme.danger }}"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{
          array: [
            { array: ["0.0", "{{ theme.success }}"] },
            { array: ["1.0", "{{ theme.primary }}"] },
          ],
        }}
        groupBy={{ array: [] }}
        groupByDropdownType="source"
        groupByStyles={{}}
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="#rgba(126, 132, 250, 0.3)"
        markerSize={6}
        markerSymbol="circle"
        name="Bar"
        showMarkers={false}
        textTemplate={null}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData={{
          array: [
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
          ],
        }}
        xDataMode="manual"
        yAxis="y"
        yData={{
          array: [
            22.25, 27.8, 27.45, 32.2, 31.05, 37, 37.05, 46.2, 45.45, 43.8,
            53.25, 55.8, 50.45, 54.2, 62.05, 66, 69.05, 79.2, 71.45, 76.8,
            92.25, 79.8, 93.45, 98.2, 105.05, 102, 100.05, 120.2, 119.45, 129.8,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </Body>
</ModalFrame>
