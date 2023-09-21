<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="5"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "5" }] }}
        pluginId="pageSize"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUsersQuery"
        type="datasource"
        waitMs="1000"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      value="##### Pagination Size:"
      verticalAlign="center"
    />
    <Button
      id="button3"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="20"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "20" }] }}
        pluginId="pageSize"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUsersQuery"
        type="datasource"
        waitMs="1000"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button2"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="10"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "10" }] }}
        pluginId="pageSize"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUsersQuery"
        type="datasource"
        waitMs="1000"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="table1"
      _columns={[
        "id",
        "email",
        "first_name",
        "last_name",
        "created_at",
        "updated_at",
        "active",
        "feature_flags",
        "trial_expiry_date",
      ]}
      _columnVisibility={{
        ordered: [
          { created_at: false },
          { updated_at: false },
          { active: false },
          { feature_flags: false },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { id: "center" },
          { email: "center" },
          { first_name: "center" },
          { last_name: "center" },
          { trial_expiry_date: "center" },
        ],
      }}
      columnColors={{
        ordered: [
          { geoLocation: "" },
          { userId: "" },
          { active: "" },
          { created_at: "" },
          { ipAddress: "" },
          { organizationId: "" },
          { updatedAt: "" },
          { metadata: "" },
          { actionType: "" },
          { trial_expiry_date: "" },
          { queryName: "" },
          { responseTimeMs: "" },
          { last_name: "" },
          { updated_at: "" },
          { resourceName: "" },
          { pageName: "" },
          { userAgent: "" },
          { first_name: "" },
          { id: "" },
          { createdAt: "" },
          { email: "" },
          { feature_flags: "" },
        ],
      }}
      columnWidths={[{ object: { id: "metadata", value: 108.28125 } }]}
      customButtonName=""
      data="{{getUsersQuery.data}}"
      events={[
        {
          ordered: [
            { event: "pageChange" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "getUsersQuery" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      heightType="auto"
      pageSize="{{pageSize.value}}"
      serverPaginated={true}
      showBoxShadow={false}
      showDownloadButton={false}
      showRefreshButton={false}
      totalRowCount="{{getQueryCount.data.count[0]}}"
    />
    <Button
      id="button5"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Invalidate Cache"
    >
      <Event
        event="click"
        method="invalidateCache"
        params={{ ordered: [] }}
        pluginId="getOpps"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getOpps"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
