<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css="" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(247, 247, 247)" }] }}
    type="main"
  >
    <Include src="./src/container2.rsx" />
    <Include src="./src/container4.rsx" />
    <Spacer id="spacer7" />
    <Include src="./src/container3.rsx" />
    <Modal
      id="HowItWorksModal"
      buttonText="How it works"
      hidden="{{ true }}"
      modalHeight="400px"
      modalWidth="600px"
    >
      <Text
        id="text7"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="#### How it works

This app pulls data from the internal Postgres Database backing this Retool instance. Specifically, it queries the `audit_trail_events`, `page_saves`, and `users` tables. 

This app also comes predefined with SQL queries, which you can duplicate and modify to surface whichever adoption metrics you desire. 

#### Notes

###### Avoid large queries! 

If this app is running on a high-usage Retool instance, be sure to avoid running large queries. 

###### Truncating your tables to improve performance

You can truncate these tables by running queries against it. We recommend copying the contents to another (external) DB before doing so to preserve all logs. 
"
        verticalAlign="center"
      />
    </Modal>
  </Frame>
</App>
