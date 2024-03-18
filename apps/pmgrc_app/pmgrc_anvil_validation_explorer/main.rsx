<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Container
      id="container1"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Participant List Validator"
          verticalAlign="center"
        />
      </Header>
      <View id="cc3d9" viewKey="View 1">
        <Text
          id="text1"
          value="#### Participant List (JSON)"
          verticalAlign="center"
        />
        <JSONEditor
          id="participantsList"
          value={
            '{\n  "participant_list": [\n    "PMGRC-1025-1025-0",\n    "PMGRC-1026-1026-0",\n    "PMGRC-1027-1027-0",\n    "PMGRC-1028-1028-0",\n    "PMGRC-1029-1029-0",\n    "PMGRC-103-106-1",\n    "PMGRC-1030-1030-0",\n    "PMGRC-1031-1031-0"\n  ]\n}'
          }
        />
        <Button
          id="validateButton"
          disabled="{{ participantsList.invalid }}"
          iconBefore="bold/interface-validation-check-square-2-alternate"
          loading="{{ runValidationV2.isFetching }}"
          styleVariant="solid"
          text="Validate"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="runValidationV2"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Container
      id="container2"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Validation Results JSON Explorer"
          verticalAlign="center"
        />
      </Header>
      <View id="cc3d9" viewKey="View 1">
        <JSONExplorer id="validationJson" value="{{ runValidationV2.data }}" />
      </View>
    </Container>
    <Container
      id="container3"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Validation Results"
          verticalAlign="center"
        />
      </Header>
      <View id="cc3d9" viewKey="View 1">
        <ListViewBeta
          id="listView4"
          computeAllInstanceValues={true}
          data="{{ Object.keys(runValidationV2.data.data) }}"
          itemWidth="200px"
          layoutType="grid"
          marginType="none"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container12"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="0"
            showBody={true}
            showBorder={false}
          >
            <Header>
              <Text
                id="containerTitle8"
                value="#### Container title"
                verticalAlign="center"
              />
            </Header>
            <View id="4b460" viewKey="View 1">
              <Include src="./src/container13.rsx" />
            </View>
          </Container>
        </ListViewBeta>
        <Container
          id="tabbedContainer1"
          currentViewKey="{{ self.viewKeys[0] }}"
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          padding="12px"
          paddingType="normal"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Tabs
              id="tabs1"
              itemMode="static"
              navigateContainer={true}
              targetContainerId="tabbedContainer1"
              value="{{ self.values[0] }}"
            >
              <Option id="047b1" value="Tab 1" />
              <Option id="565e3" value="Tab 2" />
              <Option id="c4cdc" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="6982b" viewKey="Participants">
            <ListViewBeta
              id="gridView1"
              _primaryKeys="{{ item.participant_id }}"
              data="{{ runValidationV2.data.data.participants.incomplete }}
"
              itemWidth="200px"
              marginType="none"
              numColumns="2"
              padding="0"
            >
              <Container
                id="collapsibleContainer1"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                padding="12px"
                showBody={true}
                showHeader={true}
              >
                <Header>
                  <Tags
                    id="tags1"
                    allowWrap={true}
                    colors=""
                    hashColors={true}
                    style={{ ordered: [{ defaultBackground: "danger" }] }}
                    value="['{{Object.keys(item.incomplete).length}} Errors']"
                  />
                  <Text
                    id="collapsibleTitle1"
                    value="#### {{ item.participant_id }}"
                    verticalAlign="center"
                  />
                  <ToggleButton
                    id="collapsibleToggle1"
                    horizontalAlign="right"
                    iconForFalse="bold/interface-arrows-button-down"
                    iconForTrue="bold/interface-arrows-button-up"
                    iconPosition="replace"
                    styleVariant="outline"
                    text="{{ self.value ? 'Hide' : 'Show' }}"
                    value="{{ collapsibleContainer1.showBody }}"
                  >
                    <Event
                      event="change"
                      method="setShowBody"
                      params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
                      pluginId="collapsibleContainer1"
                      type="widget"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </ToggleButton>
                </Header>
                <View id="b4bbf" viewKey="View 1">
                  <Container
                    id="container4"
                    footerPadding="4px 12px"
                    headerPadding="4px 12px"
                    overflowType="hidden"
                    padding="12px"
                    showBody={true}
                    showBorder={false}
                  >
                    <Header>
                      <Text
                        id="listViewTitle1"
                        value="#### List View title"
                        verticalAlign="center"
                      />
                    </Header>
                    <View id="ccaf0" viewKey="View 1">
                      <ListViewBeta
                        id="listView1"
                        computeAllInstanceValues={true}
                        data="{{ runValidationV2.data.data.participants.incomplete.filter((participant) => participant.participant_id === item.participant_id)[0].incomplete
}}"
                        itemWidth="200px"
                        layoutType="grid"
                        marginType="none"
                        numColumns="4"
                        padding="0"
                      >
                        <Container
                          id="collapsibleContainer2"
                          footerPadding="4px 12px"
                          headerPadding="4px 12px"
                          padding="12px"
                          showBody={true}
                          showHeader={true}
                        >
                          <Header>
                            <Text
                              id="collapsibleTitle2"
                              value="#### {{ item.column}}"
                              verticalAlign="center"
                            />
                            <ToggleButton
                              id="collapsibleToggle2"
                              horizontalAlign="right"
                              iconForFalse="bold/interface-arrows-button-down"
                              iconForTrue="bold/interface-arrows-button-up"
                              iconPosition="replace"
                              styleVariant="outline"
                              text="{{ self.value ? 'Hide' : 'Show' }}"
                              value="{{ collapsibleContainer2.showBody }}"
                            >
                              <Event
                                event="change"
                                method="setShowBody"
                                params={{
                                  ordered: [{ showBody: "{{ self.value }}" }],
                                }}
                                pluginId="collapsibleContainer2"
                                type="widget"
                                waitMs="0"
                                waitType="debounce"
                              />
                            </ToggleButton>
                          </Header>
                          <View id="b4bbf" viewKey="View 1">
                            <Text
                              id="text2"
                              value="{{ item.detail }}"
                              verticalAlign="center"
                            />
                          </View>
                        </Container>
                      </ListViewBeta>
                    </View>
                  </Container>
                </View>
              </Container>
            </ListViewBeta>
          </View>
          <View id="a09b3" viewKey="Families">
            <ListViewBeta
              id="gridView2"
              _primaryKeys="{{ item.participant_id }}"
              data="{{ runValidationV2.data.data.families.incomplete }}
"
              itemWidth="200px"
              marginType="none"
              numColumns="2"
              padding="0"
            >
              <Container
                id="collapsibleContainer3"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                padding="12px"
                showBody={true}
                showHeader={true}
              >
                <Header>
                  <Tags
                    id="tags2"
                    allowWrap={true}
                    colors=""
                    hashColors={true}
                    style={{ ordered: [{ defaultBackground: "danger" }] }}
                    value="['{{Object.keys(item.incomplete).length}} Errors']"
                  />
                  <Text
                    id="collapsibleTitle3"
                    value="#### {{ item.family_id }}"
                    verticalAlign="center"
                  />
                  <ToggleButton
                    id="collapsibleToggle3"
                    horizontalAlign="right"
                    iconForFalse="bold/interface-arrows-button-down"
                    iconForTrue="bold/interface-arrows-button-up"
                    iconPosition="replace"
                    styleVariant="outline"
                    text="{{ self.value ? 'Hide' : 'Show' }}"
                    value="{{ collapsibleContainer3.showBody }}"
                  >
                    <Event
                      event="change"
                      method="setShowBody"
                      params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
                      pluginId="collapsibleContainer3"
                      type="widget"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </ToggleButton>
                </Header>
                <View id="b4bbf" viewKey="View 1">
                  <Container
                    id="container5"
                    footerPadding="4px 12px"
                    headerPadding="4px 12px"
                    overflowType="hidden"
                    padding="0"
                    showBody={true}
                    showBorder={false}
                  >
                    <Header>
                      <Text
                        id="listViewTitle2"
                        value="#### List View title"
                        verticalAlign="center"
                      />
                    </Header>
                    <View id="ccaf0" viewKey="View 1">
                      <ListViewBeta
                        id="listView2"
                        computeAllInstanceValues={true}
                        data="{{ runValidationV2.data.data.families.incomplete.filter((family) => family.family_id === item.family_id)[0].incomplete
}}"
                        itemWidth="200px"
                        layoutType="grid"
                        marginType="none"
                        numColumns="4"
                        padding="0"
                      >
                        <Container
                          id="collapsibleContainer4"
                          footerPadding="4px 12px"
                          headerPadding="4px 12px"
                          padding="12px"
                          showBody={true}
                          showHeader={true}
                        >
                          <Header>
                            <Text
                              id="collapsibleTitle4"
                              value="#### {{ item.column}}"
                              verticalAlign="center"
                            />
                            <ToggleButton
                              id="collapsibleToggle4"
                              horizontalAlign="right"
                              iconForFalse="bold/interface-arrows-button-down"
                              iconForTrue="bold/interface-arrows-button-up"
                              iconPosition="replace"
                              styleVariant="outline"
                              text="{{ self.value ? 'Hide' : 'Show' }}"
                              value="{{ collapsibleContainer4.showBody }}"
                            >
                              <Event
                                event="change"
                                method="setShowBody"
                                params={{
                                  ordered: [{ showBody: "{{ self.value }}" }],
                                }}
                                pluginId="collapsibleContainer4"
                                type="widget"
                                waitMs="0"
                                waitType="debounce"
                              />
                            </ToggleButton>
                          </Header>
                          <View id="b4bbf" viewKey="View 1">
                            <Text
                              id="text3"
                              value="{{ item.detail }}"
                              verticalAlign="center"
                            />
                          </View>
                        </Container>
                      </ListViewBeta>
                    </View>
                  </Container>
                </View>
              </Container>
            </ListViewBeta>
          </View>
          <View id="ceda2" viewKey="Phenotypes">
            <ListViewBeta
              id="gridView3"
              _primaryKeys="{{ item.participant_id }}"
              data="{{ runValidationV2.data.data.phenotypes.incomplete }}
"
              itemWidth="200px"
              marginType="none"
              numColumns="2"
              padding="0"
            >
              <Include src="./src/collapsibleContainer5.rsx" />
            </ListViewBeta>
          </View>
        </Container>
      </View>
    </Container>
  </Frame>
</App>
