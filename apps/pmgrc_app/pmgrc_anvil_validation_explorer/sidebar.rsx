<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  footerPaddingType="normal"
  headerPadding="8px 12px"
  headerPaddingType="normal"
  isHiddenOnMobile={true}
  padding="8px 12px"
  paddingType="normal"
>
  <Header>
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
    />
  </Header>
  <Body>
    <Module
      id="mainSidebarNavigation1"
      name="main_sidebar_navigation"
      pageUuid="405be3a6-c8fe-11ed-9caf-2f9afd057d3e"
    />
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
