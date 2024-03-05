<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    style={{ ordered: [{ canvas: "#ffffff" }] }}
    type="main"
  >
    <Module
      id="mainSidebarNavigation1"
      name="main_sidebar_navigation"
      pageUuid="405be3a6-c8fe-11ed-9caf-2f9afd057d3e"
    />
    <Include src="./src/tabbedContainer1.rsx" />
  </Frame>
</App>
