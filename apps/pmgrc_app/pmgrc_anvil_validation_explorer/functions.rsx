<GlobalFunctions>
  <WorkflowRun
    id="runValidationV2"
    resourceName="WorkflowRun"
    resourceTypeOverride=""
    workflowId="0b074310-bf36-4130-b057-0e8e7e9ef898"
    workflowParams={include("./lib/runValidationV2.json", "string")}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Validated Successfully!" },
                { duration: "4" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { title: "Validation Failed!" },
                { duration: "4" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </WorkflowRun>
</GlobalFunctions>
