<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: ["canvas"] }}
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(247, 247, 247)" }] }}
    type="main"
  >
    <Include src="./src/container1.rsx" />
    <Include src="./src/container5.rsx" />
    <Include src="./src/container3.rsx" />
    <Include src="./src/container4.rsx" />
    <Include src="./src/AreYouSureModal.rsx" />
    <Modal
      id="HowItWorksModal"
      _disclosedFields={{ array: [] }}
      buttonText="How it works"
      closeOnOutsideClick={true}
      hidden="{{ true }}"
      modalHeight="625px"
      modalHeightType="auto"
      modalWidth="80%"
    >
      <Text
        id="text9"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="#### How it works

This app pulls data from the internal Postgres database backing this Retool instance. Specifically, it queries the `audit_trail_events`, `resources`, `users`, `resource_folders`, and `pages` tables. 

This app comes with predefined SQL queries, that can be duplicated and modified to surface the specific audit events you desire. To learn more, see the [Audit Logs documentation](https://docs.retool.com/docs/audit-logs).

***
#### Points to remember

###### Avoid large queries

If this app is running on a high-usage Retool instance, be careful to avoid querying large time windows since they may containing hundreds of thousands of events. Most of the heavy-lifting powering this app is done by the Postgres database backing the Retool instance. Scanning through a large number of event records can lead to noticeable performance degradataion for other users. Choose the narrowest possible time window for which to see audit logs to avoid this pitfall.

###### Truncate the `audit_trail_events` table to improve performance

Self-hosted Retool assumes that historical audit log data needs to be preserved indefinitely. Consequently, the size of the `audit_trail_events` table grows monotonically over time. We recommended periodically vaccuming the `audit_trail_events` table based on your organization's audit log preservation requiremenents by directly querying the Retool Postgres database. Alternatively, you may ETL audit event data to an OLAP system like Snowflake or BigQuery and vaccum the Postgres tables periodically if you need to retain or query large amounts of audit event data. "
        verticalAlign="center"
      />
    </Modal>
  </Frame>
</App>
