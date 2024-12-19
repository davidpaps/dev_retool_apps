<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  style={{ ordered: [{ "border-color": "rgba(1, 111, 208, 0.5)" }] }}
  type="header"
>
  <Navigation
    id="navigation1"
    itemMode="static"
    src={
      "{{ theme.primary == \"#016fd0\" ? 'https://pbs.twimg.com/profile_images/986855869827768321/exMxTOCm_400x400.jpg' : theme.primary == '#ff365a' ? 'https://static-00.iconduck.com/assets.00/airbnb-icon-2048x2048-kuw3ebuv.png' :  theme.primary == '#101f4a' ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBNJKIbP2VNXbsy2DO3elcGkAHf0njMNo3M_q7vaf_3DyvmdERWNnf7kHpp5lncU7Xyn4&usqp=CAU' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRST1KYT8iTQHxcFKKQ9CpB4NT9iib_nC-j9w&s'}}"
    }
  >
    <Option id="62ed1" icon="bold/interface-home-3" label="Home" />
    <Option
      id="ba26a"
      icon="bold/interface-user-multiple"
      iconPosition="left"
      itemType="app"
      label="Claims"
    />
    <Option id="963a1" icon="bold/interface-setting-cog" label="Settings" />
  </Navigation>
  <Avatar
    id="avatar1"
    fallback="{{ current_user.fullName }}"
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelCaption="{{ current_user.email }}"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ ordered: [{ background: "automatic" }] }}
  />
</Frame>
