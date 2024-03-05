<App>
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      hidden="false"
      isGlobalWidgetContainer={true}
    >
      <Navigation
        id="sidebar_navigation_links"
        itemMode="static"
        marginType="normal"
        orientation="vertical"
        style={{ ordered: [{ pillRadius: "4px" }] }}
      >
        <Option
          id="18d21"
          appTarget="8411292c-3fb3-11ee-a42f-8b4365e6b681"
          icon="bold/money-graph-bar"
          iconPosition="left"
          itemType="app"
          label="Dashboard"
        >
          <Event
            event="click"
            method="setCurrentViewIndex"
            params={{ ordered: [{ viewIndex: "0" }] }}
            pluginId="main_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="90b9e"
          appTarget="c516b760-c8fe-11ed-ab5c-43f4d95f9137"
          disabled={false}
          hidden={false}
          icon="bold/money-graph-pie-chart"
          iconPosition="left"
          itemType="app"
          label="Study Participants"
        >
          <Event
            event="click"
            method="setCurrentViewIndex"
            params={{ ordered: [{ viewIndex: "3" }] }}
            pluginId="main_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="bc36f"
          appTarget="56a7ef80-40f2-11ee-a665-e7f44fb50a53"
          disabled={false}
          hidden={false}
          icon="bold/nature-ecology-leaf-alternate"
          iconPosition="left"
          itemType="app"
          label="Internal Sample Processing"
        />
        <Option
          id="7108a"
          appTarget="5def364e-1038-11ee-8d1e-87ed2cf333c2"
          disabled={false}
          hidden={false}
          icon="bold/programming-cloud-upload-alternate"
          iconPosition="left"
          itemType="app"
          key="00d93a7c-f20b-4569-ad91-c73802ff4f83"
          label="Uploadable Results"
          tooltip="Allows download of GREGoR data model in TSV files from the database, ready for upload."
        >
          <Event
            event="click"
            method="setCurrentViewIndex"
            params={{ ordered: [{ viewIndex: "7" }] }}
            pluginId="main_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="13f4b"
          appTarget="60b14bf4-856a-11ee-b01a-83dff1ce9354"
          disabled={false}
          hidden={false}
          icon="bold/interface-edit-grid"
          iconPosition="left"
          itemType="app"
          label="Dataset Builder"
        />
        <Option
          id="b4d50"
          appTarget="cd4d5d22-b4cf-11ee-aeee-6f381711b3c9"
          disabled={false}
          hidden={false}
          icon="bold/computer-database-check"
          iconPosition="left"
          itemType="app"
          label="Anvil Validation Explorer"
        />
        <Event
          enabled="{{ current_user.id !== 471218 }}"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "2b8dfa38-7cda-11ed-8459-0b2493c0d871" },
              { options: { ordered: [{ newTab: true }] } },
            ],
          }}
          pluginId=""
          targetId="9e614"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ current_user.id === 471218 }}"
          event="click"
          method="openApp"
          params={{
            ordered: [{ uuid: "f795b470-7c0a-11ed-ba20-8f0c4906b650" }],
          }}
          pluginId=""
          targetId="9e614"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setCurrentViewIndex"
          params={{ ordered: [{ viewIndex: "5" }] }}
          pluginId="main_container"
          targetId="50bc3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setCurrentViewIndex"
          params={{ ordered: [{ viewIndex: "6" }] }}
          pluginId="main_container"
          targetId="d1d4d"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled=""
          event="click"
          method="setCurrentViewIndex"
          params={{ ordered: [{ viewIndex: "2" }] }}
          pluginId="main_container"
          targetId="24cd3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setCurrentViewIndex"
          params={{ ordered: [{ viewIndex: "1" }] }}
          pluginId="main_container"
          targetId="24598"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Navigation>
    </ModuleContainerWidget>
  </Frame>
</App>
