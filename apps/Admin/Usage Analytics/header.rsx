<Frame
  id="$header"
  sticky={true}
  style={{
    ordered: [
      { "border-color": "rgba(209, 209, 209, 0)" },
      { "primary-surface": "rgba(18, 33, 47, 1)" },
      { "primary-text": "#ffffff" },
    ],
  }}
  type="header"
>
  <HTML
    id="html1"
    _disclosedFields={{ array: [] }}
    css={include("./lib/html1.css", "string")}
    html={include("./lib/html1.html", "string")}
  />
  <Text
    id="text20"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
    style={{ ordered: [{ color: "rgba(255, 255, 255, 0.5)" }] }}
    value="Instance: {{ new URL(urlparams.href).hostname }} 
"
    verticalAlign="center"
  />
  <Text
    id="text3"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    heightType="fixed"
    style={{ ordered: [{ color: "rgba(255, 255, 255, 0.65)" }] }}
    value={
      '<div style="line-height: 16px">Usage and adoption metrics for all apps and users within the Retool organization. Select a date range to get started.</div>\n'
    }
    verticalAlign="center"
  />
  <DateRange
    id="DateRange"
    _disclosedFields={{ array: [] }}
    dateFormat="MMM d, yyyy"
    disabled=""
    endPlaceholder="End date"
    label=""
    labelPosition="top"
    maxDate={'{{ moment().format("YYYY-MM-DD")}}'}
    minDate={"{{ moment().subtract(12,'months').format(\"YYYY-MM-DD\")}}"}
    startPlaceholder="Start date"
    style={{ ordered: [{ background: "rgba(31, 54, 75, 1)" }] }}
    textBetween="-"
    value={{
      ordered: [
        { start: "{{ moment().subtract(30,'days')}}" },
        { end: "{{ moment()}} " },
      ],
    }}
  />
  <Link
    id="link1"
    _disclosedFields={{ array: [] }}
    showUnderline="never"
    text="How it works"
  >
    <Event
      event="click"
      method="open"
      params={{ ordered: [] }}
      pluginId="HowItWorksModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Link>
</Frame>
