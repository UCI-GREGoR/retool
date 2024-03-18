<Container
  id="container13"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle9"
      horizontalAlign="center"
      value="#### {{ item }}"
      verticalAlign="center"
    />
    <ProgressCircle
      id="progressCircle2"
      horizontalAlign="center"
      tooltipText="Completeness Value"
      value="{{ Math.round((runValidationV2.data.data[item].complete.length / (runValidationV2.data.data[item].incomplete.length + runValidationV2.data.data[item].complete.length))* 100)}}"
    />
    <Spacer id="spacer1" />
  </Header>
  <View id="4b460" viewKey="View 1">
    <Status
      id="status1"
      horizontalAlign="center"
      iconPosition="right"
      itemMode="static"
      value="completed"
    >
      <Option
        id="fb25a"
        color="{{ theme.success }}"
        icon="bold/interface-validation-check-circle"
        label="{{runValidationV2.data.data[item].complete.length}} Ready for upload"
        value="completed"
      />
      <Option
        id="6d37a"
        color="{{ theme.danger }}"
        icon="bold/interface-alert-warning-circle"
        label="Incomplete"
        value="Incomplete"
      />
    </Status>
    <Status
      id="status2"
      horizontalAlign="center"
      iconPosition="right"
      itemMode="static"
      value="Incomplete"
    >
      <Option
        id="fb25a"
        color="{{ theme.success }}"
        icon="bold/interface-validation-check-circle"
        label="Ready for upload"
        value="completed"
      />
      <Option
        id="6d37a"
        color="{{ theme.danger }}"
        icon="bold/interface-alert-warning-circle"
        label="{{ runValidationV2.data.data[item].incomplete.length }} Incomplete"
        value="Incomplete"
      />
    </Status>
  </View>
</Container>
