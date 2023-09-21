<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Note
      id="comment1"
      evaluatedKey="user-1"
      events={[
        {
          ordered: [
            { event: "submit" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "query3" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
    />
    <Note id="comment2" evaluatedKey="user-2" />
  </Frame>
</App>
