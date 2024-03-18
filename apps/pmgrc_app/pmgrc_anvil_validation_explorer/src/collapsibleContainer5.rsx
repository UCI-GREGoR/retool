<Container
  id="collapsibleContainer5"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tags
      id="tags3"
      allowWrap={true}
      colors=""
      hashColors={true}
      style={{ ordered: [{ defaultBackground: "danger" }] }}
      value="['{{Object.keys(item.incomplete).length}} Errors']"
    />
    <Text
      id="text5"
      value="#### {{
  item.ontology
}} - {{ item.term_id}}"
      verticalAlign="center"
    />
    <Text
      id="collapsibleTitle5"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
      value="###### Phenotype ID: {{ item.phenotype_id }}"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle5"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer5.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="b4bbf" viewKey="View 1">
    <Container
      id="container6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      overflowType="hidden"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="listViewTitle3"
          value="#### List View title"
          verticalAlign="center"
        />
      </Header>
      <View id="ccaf0" viewKey="View 1">
        <ListViewBeta
          id="listView3"
          computeAllInstanceValues={true}
          data="{{ runValidationV2.data.data.phenotypes.incomplete.filter((phenotype) => phenotype.phenotype_id === item.phenotype_id)[0].incomplete
}}"
          itemWidth="200px"
          layoutType="grid"
          marginType="none"
          numColumns="4"
          padding="0"
        >
          <Container
            id="collapsibleContainer6"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
            showHeader={true}
          >
            <Header>
              <Text
                id="collapsibleTitle6"
                value="#### {{ item.column}}"
                verticalAlign="center"
              />
              <ToggleButton
                id="collapsibleToggle6"
                horizontalAlign="right"
                iconForFalse="bold/interface-arrows-button-down"
                iconForTrue="bold/interface-arrows-button-up"
                iconPosition="replace"
                styleVariant="outline"
                text="{{ self.value ? 'Hide' : 'Show' }}"
                value="{{ collapsibleContainer6.showBody }}"
              >
                <Event
                  event="change"
                  method="setShowBody"
                  params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
                  pluginId="collapsibleContainer6"
                  type="widget"
                  waitMs="0"
                  waitType="debounce"
                />
              </ToggleButton>
            </Header>
            <View id="b4bbf" viewKey="View 1">
              <Text
                id="text4"
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
