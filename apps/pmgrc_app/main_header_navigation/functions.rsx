<GlobalFunctions>
  <SqlQueryUnified
    id="bulkUploadSelectedSpecimens"
    actionType="BULK_INSERT"
    confirmationMessage="#### Only your selected samples will be uploaded. Proceed?"
    editorMode="gui"
    records="{{ extracted_sample_table.selectedRow.data}}"
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    successMessage="Your samples have been successfully uploaded."
    tableName="upload_sample_logbook"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <Function
    id="bulkImportSpecimenParser"
    funcBody={include("./lib/bulkImportSpecimenParser.js", "string")}
  />
  <SqlQueryUnified
    id="getStoredSpecimens"
    query={include("./lib/getStoredSpecimens.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateSelectedSpecimen"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ form1.data}}"
    confirmationMessage="Are you sure you want to save these changes?"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ extracted_sample_table2.selectedRow.data.id}}","operation":"="}]'
    }
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    runWhenModelUpdates={false}
    successMessage="Changes have been saved."
    tableName="upload_sample_logbook"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getStoredSpecimens"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="openEditSpecimenModal"
    query={include("./lib/openEditSpecimenModal.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="uploadSingleSpecimen"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{form2.data}}"
    confirmationMessage="Are you sure you want to add this specimen? You can edit/delete this speciment later under 'Access Imported Specimens'"
    editorMode="gui"
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    successMessage="Specimen successfully added."
    tableName="upload_sample_logbook"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getStoredSpecimens"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="deleteSingleSpecimen"
    actionType="DELETE_BY"
    confirmationMessage="Are you sure you want to delete this specimen?"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ extracted_sample_table2.selectedRow.data.id}}","operation":"="}]'
    }
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="abed73cb-272b-4fc1-860f-a78075104e9d"
    runWhenModelUpdates={false}
    successMessage="Specimen deleted successfully"
    tableName="upload_sample_logbook"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getStoredSpecimens"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
