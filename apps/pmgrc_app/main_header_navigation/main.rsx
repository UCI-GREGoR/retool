<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Image
        id="image1"
        _disclosedFields={{ array: [] }}
        fit="contain"
        heightType="fixed"
      />
      <Text
        id="text1"
        _disclosedFields={{ array: [] }}
        value="{{ }}"
        verticalAlign="center"
      />
      <TextInput
        id="textInput1"
        _disclosedFields={{ array: [] }}
        hideLabel={true}
        iconBefore="bold/interface-search"
        placeholder="Search"
        showClear={true}
      />
      <Avatar
        id="avatar2"
        _disclosedFields={{ array: [] }}
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{ current_user.fullName }}"
        labelCaption="{{ current_user.email }}"
        src="{{ current_user.profilePhotoUrl }}"
        style={{ ordered: [{ background: "automatic" }] }}
      />
    </ModuleContainerWidget>
  </Frame>
</App>
