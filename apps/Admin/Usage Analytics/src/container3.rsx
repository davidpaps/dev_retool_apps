<Container
  id="container3"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Tabs
      id="Tabs"
      _defaultValue={null}
      alignment="center"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { selectedBackground: "" },
          { selectedText: "" },
          { hoverText: "" },
          { unselectedText: "" },
        ],
      }}
      targetContainerId="container3"
      value="{{ self.values[0] }}"
    >
      <Option id="78776" value="Applications" />
      <Option id="f1cc1" value="Tab 2" />
      <Option id="254ca" value="Tab 3" />
    </Tabs>
    <Text
      id="text5"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      heightType="fixed"
      style={{ ordered: [{ color: "primary" }] }}
      value="**Usage summary**"
      verticalAlign="center"
    />
  </Header>
  <View id="58fd5" viewKey="Applications">
    <TextInput
      id="ApplicationSearchInput"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      label="Search by app name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="MaxApps"
      _defaultValue={null}
      allowCustomValue={true}
      allowDeselect={true}
      itemMode="static"
      label="Max results"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="25"
    >
      <Option id="ace93" value="25" />
      <Option id="86dfc" value="50" />
      <Option id="4b954" value="100" />
    </Select>
    <Include src="./container5.rsx" />
    <TableLegacy
      id="AppTable"
      _columns={[
        "uuid",
        "name",
        "folder_name",
        "id",
        "created_at",
        "folder_id",
        "is_module",
        "protected",
        "count_page_views",
        "count_page_saves",
        "count_unique_builders",
        "last_edited_by",
        "count_unique_viewers",
      ]}
      _columnSummaryTypes={{ ordered: [{ name: "" }] }}
      _columnSummaryValues={{ ordered: [{ name: "" }] }}
      _columnVisibility={{
        ordered: [
          { is_module: false },
          { count_unique_viewers: true },
          { last_edited_by: false },
          { folderId: false },
          { created_at: true },
          { name: true },
          { folder_id: false },
          { page_name_p: false },
          { count_page_views: true },
          { protected: false },
          { view_count: true },
          { count_unique_builders: true },
          { count_page_saves: true },
          { id: false },
          { uuid: false },
          { folder_name: true },
          { page_name_a: true },
        ],
      }}
      _compatibilityMode={false}
      applyDynamicSettingsToColumnOrder={false}
      columnAlignment={{
        ordered: [
          { view_count: "right" },
          { created_at: "right" },
          { uuid: "left" },
          { count_page_views: "right" },
          { count_page_saves: "right" },
          { count_unique_builders: "right" },
          { name: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { is_module: "" },
          { count_unique_viewers: "" },
          { last_edited_by: "" },
          { folderId: "" },
          { created_at: "" },
          { name: "" },
          { folder_id: "" },
          { page_name_p: "" },
          { count_page_views: "" },
          { protected: "" },
          { view_count: "" },
          { count_unique_builders: "" },
          { count_page_saves: "" },
          { id: "" },
          { uuid: "" },
          { folder_name: "" },
          { page_name_a: "" },
        ],
      }}
      columnEditable={{ ordered: [{ uuid: false }] }}
      columnFormats={{
        ordered: [
          { view_count: "NumberDataCell" },
          { created_at: "DateDataCell" },
          { uuid: "button" },
          { count_page_views: "NumberDataCell" },
          { count_page_saves: "NumberDataCell" },
          { count_unique_builders: "NumberDataCell" },
          { name: "default" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { is_module: "Module" },
          { count_unique_viewers: "Unique Viewers" },
          { created_at: "Created At" },
          { name: "Name" },
          { count_page_views: "Page Views" },
          { protected: "Protected" },
          { count_unique_builders: "Unique Editors" },
          { count_page_saves: "Page Saves" },
          { folder_name: "Folder" },
          { page_name_a: "Page Name" },
        ],
      }}
      columnMappers={{
        ordered: [
          { uuid: "Open" },
          {
            name: "<a href=\"{{'/apps/' + ((currentRow.folder_name == 'root') ? '' : encodeURI(currentRow.folder_name) + '/' ) + encodeURI(currentRow.name)}}\" style='text-decoration: underline dotted' target='_blank'>{{self}}</a>\n",
          },
        ],
      }}
      columnMappersRenderAsHTML={{ ordered: [{ name: true }] }}
      columns={[
        "uuid",
        "name",
        "folder_name",
        "id",
        "created_at",
        "folder_id",
        "is_module",
        "protected",
        "count_page_views",
        "count_page_saves",
        "count_unique_builders",
        "last_edited_by",
        "count_unique_viewers",
      ]}
      columnTypeProperties={{
        ordered: [
          { name: { ordered: [] } },
          {
            view_count: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          { created_at: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          {
            count_page_views: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          {
            count_page_saves: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          {
            count_unique_builders: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            uuid: {
              ordered: [
                { buttonType: "internal-url" },
                {
                  url: "https://{{ window.location.href.split('/')[2] + '/' + self }}",
                },
                { newWindow: true },
                { internalUrlPath: "48ecd934-9a66-11ec-8292-a3ada1ae23b3" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { is_module: false },
          { count_unique_viewers: true },
          { last_edited_by: false },
          { folderId: false },
          { created_at: true },
          { name: true },
          { folder_id: false },
          { page_name_p: false },
          { count_page_views: true },
          { protected: false },
          { view_count: true },
          { count_unique_builders: true },
          { count_page_saves: true },
          { id: false },
          { uuid: false },
          { folder_name: true },
          { page_name_a: true },
        ],
      }}
      columnWidths={[
        { object: { id: "page_name_p", value: 368.125 } },
        { object: { id: "page_name_a", value: 190.125 } },
        { object: { id: "folder_name", value: 143.5859375 } },
        { object: { id: "created_at", value: 98 } },
        { object: { id: "count_page_views", value: 92 } },
        { object: { id: "count_page_saves", value: 93 } },
        { object: { id: "name", value: 186 } },
      ]}
      customButtonName=""
      data="{{ getApps.data }}"
      defaultSortByColumn={null}
      defaultSortDescending={true}
      dynamicRowHeights={true}
      pageSize={16}
      rowHeight="compact"
      showFilterButton={false}
      showRefreshButton={false}
      style={{
        ordered: [
          { border: "rgb(224, 224, 224)" },
          { headerBackground: "rgb(255, 255, 255)" },
          { headerAccent: "rgb(41, 181, 232)" },
          { cellAccent: "rgb(41, 181, 232)" },
          { selectedRowBackground: "rgba(41, 181, 232, 0.1)" },
          { hoverRowBackground: "rgba(0, 0, 0, 0.03)" },
          { toolbarAccent: "rgb(41, 181, 232)" },
        ],
      }}
      useCompactMode={true}
    />
  </View>
  <View
    id="ed82c"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Users"
  >
    <Select
      id="MaxUsers"
      _defaultValue={null}
      allowCustomValue={true}
      allowDeselect={true}
      itemAdornmentShape="square"
      label="Max results"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="25"
    />
    <TextInput
      id="UserSearchInput"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      label="Search by user name"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Include src="./container6.rsx" />
    <TableLegacy
      id="UsersTable"
      _columns={[
        "id",
        "name",
        "email",
        "last_logged_in",
        "created_at",
        "profile_photo_url",
        "count_unique_apps",
        "count_page_views",
        "count_page_saves",
      ]}
      _columnSummaryTypes={{ ordered: [{ email: "" }] }}
      _columnSummaryValues={{ ordered: [{ email: "" }] }}
      _columnVisibility={{
        ordered: [
          { created_at: true },
          { name: false },
          { profile_photo_url: false },
          { count_page_views: true },
          { count_unique_apps: true },
          { count_page_saves: true },
          { last_logged_in: true },
          { id: false },
          { email: true },
        ],
      }}
      _compatibilityMode={false}
      applyDynamicSettingsToColumnOrder={false}
      columnAlignment={{
        ordered: [
          { last_logged_in: "right" },
          { created_at: "right" },
          { count_page_views: "right" },
          { count_page_saves: "right" },
          { count_unique_apps: "right" },
          { email: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { created_at: "" },
          { name: "" },
          { profile_photo_url: "" },
          { count_page_views: "" },
          { count_unique_apps: "" },
          { count_page_saves: "" },
          { last_logged_in: "" },
          { id: "" },
          { email: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { last_logged_in: "DateDataCell" },
          { created_at: "DateDataCell" },
          { count_page_views: "NumberDataCell" },
          { count_page_saves: "NumberDataCell" },
          { count_unique_apps: "NumberDataCell" },
          { email: "UserDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { last_logged_in: "Last Logged In" },
          { count_page_saves: "App Saves" },
          { count_unique_apps: "Apps Edited" },
          { count_page_views: "App Views" },
          { name: "Name" },
          { created_at: "Created At" },
          { email: "Email" },
        ],
      }}
      columns={[
        "id",
        "name",
        "email",
        "last_logged_in",
        "created_at",
        "profile_photo_url",
        "count_unique_apps",
        "count_page_views",
        "count_page_saves",
      ]}
      columnTypeProperties={{
        ordered: [
          { last_logged_in: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          { created_at: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          {
            count_page_views: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          {
            count_page_saves: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          {
            count_unique_apps: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          { email: { ordered: [{ allowCustomValue: true }] } },
        ],
      }}
      columnVisibility={{
        ordered: [
          { created_at: true },
          { name: false },
          { profile_photo_url: false },
          { count_page_views: true },
          { count_unique_apps: true },
          { count_page_saves: true },
          { last_logged_in: true },
          { id: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "name", value: 127.90625 } },
        { object: { id: "email", value: 195.89584350585938 } },
        { object: { id: "count_page_saves", value: 127.8828125 } },
        { object: { id: "last_logged_in", value: 127.6328125 } },
        { object: { id: "created_at", value: 134.140625 } },
        { object: { id: "count_unique_apps", value: 132.890625 } },
        { object: { id: "count_page_views", value: 135.640625 } },
      ]}
      customButtonName=""
      data="{{ getUsers.data }}"
      defaultSortByColumn={null}
      defaultSortDescending={true}
      pageSize={12}
      showFilterButton={false}
      showRefreshButton={false}
      style={{
        ordered: [
          { headerBackground: "rgba(255, 255, 255, 1)" },
          { headerAccent: "rgb(41, 181, 232)" },
          { cellAccent: "rgb(41, 181, 232)" },
          { selectedRowBackground: "rgba(41, 181, 232, 0.1)" },
          { border: "rgb(224, 224, 224)" },
          { hoverRowBackground: "rgba(0, 0, 0, 0.03)" },
          { toolbarAccent: "rgb(41, 181, 232)" },
          { editedAccent: "rgb(41, 181, 232)" },
        ],
      }}
    />
  </View>
</Container>
