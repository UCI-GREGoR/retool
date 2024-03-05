<GlobalFunctions>
  <SqlQueryUnified
    id="getParticipantAge"
    isMultiplayerEdited={false}
    query={include("./lib/getParticipantAge.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <Function
    id="map_age_into_bins"
    funcBody={include("./lib/map_age_into_bins.js", "string")}
  />
  <SqlQueryUnified
    id="getParticipantSex"
    query={include("./lib/getParticipantSex.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getParticipantReportedRace"
    query={include("./lib/getParticipantReportedRace.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getProbandCount"
    query={include("./lib/getProbandCount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getParticipantCount"
    query={include("./lib/getParticipantCount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="getFamilyCounts"
    isMultiplayerEdited={false}
    query={include("./lib/getFamilyCounts.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <Function
    id="map_family_into_bins"
    funcBody={include("./lib/map_family_into_bins.js", "string")}
  />
</GlobalFunctions>
