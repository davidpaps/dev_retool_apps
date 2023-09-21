<Frame
  id="$header"
  _disclosedFields={{
    array: ["primary-surface", "border-color", "primary-text"],
  }}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  sticky={true}
  style={{
    ordered: [
      { "primary-surface": "rgb(18, 33, 47)" },
      { "border-color": "rgba(209, 209, 209, 0)" },
      { "primary-text": "rgb(255, 255, 255)" },
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
    id="text6"
    _defaultValue=""
    _disclosedFields={{ array: ["color"] }}
    heightType="fixed"
    style={{ ordered: [{ color: "rgba(255, 255, 255, 0.65)" }] }}
    value={
      '<div style="line-height: 16px">Audit history for all apps within the Retool organization.</div>'
    }
    verticalAlign="center"
  />
  <Text
    id="text5"
    _defaultValue=""
    _disclosedFields={{ array: ["color"] }}
    horizontalAlign="right"
    style={{ ordered: [{ color: "rgba(255, 255, 255, 0.5)" }] }}
    value="Instance: {{ new URL(urlparams.href).hostname }} 
"
    verticalAlign="center"
  />
  <Link
    id="link1"
    _disclosedFields={{ array: [] }}
    horizontalAlign="right"
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
