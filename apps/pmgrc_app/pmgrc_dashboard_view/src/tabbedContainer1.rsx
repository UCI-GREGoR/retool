<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="3d183" value="Tab 1" />
      <Option id="e56de" value="Tab 2" />
      <Option id="cff64" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="ab990"
    icon="bold/travel-wayfinder-toilet-sign-man-woman"
    iconPosition="left"
    viewKey="Participants"
  >
    <Statistic
      id="stat_total_count"
      currency="USD"
      label="Total Participants"
      labelCaption="Total enrollment including all family members"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ getParticipantCount.data.count }}"
    />
    <Statistic
      id="stat_proband_count"
      currency="USD"
      label="Probands"
      labelCaption="Proband count"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ getProbandCount.data.count }}"
    />
    <Statistic
      id="stat_trio_count"
      currency="USD"
      label="Trio+"
      labelCaption="Proband plus two or more family members"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ map_family_into_bins.value.trio }}"
    />
    <Statistic
      id="stat_single_count"
      currency="USD"
      label="Single"
      labelCaption="Proband only (no family)"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ map_family_into_bins.value.proband }}"
    />
    <Statistic
      id="stat_duo_count"
      currency="USD"
      label="Duo"
      labelCaption="Proband plus one family member"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{ map_family_into_bins.value.duo }}"
    />
    <PlotlyChart
      id="chart_participant_sex"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "sex" },
                { datasource: "{{getParticipantSex.data.count}}" },
                { chartType: "bar" },
                { aggregationType: "none" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 0: "#D47E2F" },
                      { 1: "#247BC7" },
                      { 2: "#033663" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{getParticipantSex.data}}"
      groupByDropdown="sex"
      groupByJS="{{getParticipantSex.data['sex']}}"
      isDataTemplateDirty={true}
      shouldShowLegend={false}
      skipDatasourceUpdate={true}
      title="Participant Sex"
      xAxis="{{getParticipantSex.data.sex}}"
      xAxisDropdown="sex"
      yAxisTitle="Count"
    />
    <PlotlyChart
      id="chart_age_at_enrollment"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "Count" },
                {
                  datasource:
                    "{{formatDataAsObject(map_age_into_bins.value)['count']}}",
                },
                { chartType: "bar" },
                { aggregationType: "none" },
                { color: "#55A1E3" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="array"
      datasourceInputMode="javascript"
      datasourceJS="{{map_age_into_bins.value}}"
      datasourcePluginType="function"
      events={[]}
      isDataTemplateDirty={true}
      shouldShowLegend={false}
      skipDatasourceUpdate={true}
      title="Age at Enrollment"
      xAxis="{{formatDataAsObject(map_age_into_bins.value).ageBin}}"
      xAxisDropdown="ageBin"
      xAxisMode="javascript"
      yAxisTitle="Count"
    />
    <PlotlyChart
      id="chart_reported_race"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "count" },
                { datasource: "{{getParticipantReportedRace.data['count']}}" },
                { chartType: "bar" },
                { aggregationType: "none" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 0: "#033663" },
                      { 1: "#247BC7" },
                      { 2: "#55A1E3" },
                      { 3: "#DAECFC" },
                      { 4: "#EECA86" },
                      { 5: "#E9AB11" },
                      { 6: "#D47E2F" },
                      { 7: "#C15627" },
                      { 8: "#224930" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{getParticipantReportedRace.data}}"
      groupByDropdown="reported_race"
      groupByJS="{{getParticipantReportedRace.data['reported_race']}}"
      isDataTemplateDirty={true}
      isLayoutJsonDirty={true}
      layout={include("../lib/chart_reported_race.layout.json", "string")}
      shouldShowLegend={false}
      skipDatasourceUpdate={true}
      title="Reported Race"
      xAxis="{{getParticipantReportedRace.data.reported_race}}"
      xAxisDropdown="reported_race"
      yAxisTitle="Count"
    />
  </View>
  <View
    id="53a56"
    icon="bold/ecology-science-dna"
    iconPosition="left"
    viewKey="Samples"
  />
  <View
    id="52a7c"
    icon="bold/money-graph"
    iconPosition="left"
    viewKey="Data Analysis"
  />
</Container>
