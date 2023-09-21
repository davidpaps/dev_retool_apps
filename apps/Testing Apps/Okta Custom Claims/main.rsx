<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <JSONExplorer id="jsonExplorer1" value="{{current_user}}" />
  </Frame>
</App>
