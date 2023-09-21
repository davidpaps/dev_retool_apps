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
      id="text2"
      _disclosedFields={{ array: [] }}
      value="### {{query1.metadata.request.url}}"
      verticalAlign="center"
    />
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="{{query1.data.message}}"
      verticalAlign="center"
    />
    <HTML
      id="html1"
      _disclosedFields={{ array: [] }}
      css={include("./lib/html1.css", "string")}
      html="{{query1.data.message}}"
    />
  </Frame>
</App>
