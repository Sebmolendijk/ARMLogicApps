# GCP-Reporting

This Logic App collect GCP recommendations from Microsoft Cloud App Security and send it to a Log Analytics workspace for analysis.
More details on this capabiliy can be found in [MCAS documentation](https://docs.microsoft.com/en-us/cloud-app-security/connect-google-gcp-to-microsoft-cloud-app-security "MCAS documentation") 

## Deployment steps

1. Create a Resource Group where you'll deploy your Logic App
1. Create a Log Analytics workspace where you'll store the data (you can use an existing workspace)
1. Modify the **GCP-Reporting.parameters.json** parameter file to include:
   * Your Logic App name
   * The name of the Log Analytics connection to use (the default value is provided in the file)
   * Your MCAS tenant URL
   * An MCAS API token (Details [here](https://docs.microsoft.com/en-us/cloud-app-security/api-tokens))
1. Modify the **GCP-Reporting/DeployToDev.ps1** file to include the right Resource Group and Logic App name and run the commands:
    ```
    Import-Module Az.Resources
    New-AzResourceGroupDeployment -ResourceGroupName CSPM -TemplateFile .\GCP-Reporting.template.json -TemplateParameterFile .\GCP-Reporting.parameters.json -Name DevGPC-Reporting -Verbose
    ```
1. Go to the Log Analytics connection and open the "Edit API connection" link
1. Add the workspace ID and the workspace key obtained from your workspace details and save the modifications
1. Go to you rnewly created Logic App and enable it. It should run automically. If not, you can run the trigger manually.
1. Go to your Log Analytics workspace and review the log created under the **McasCspm_CL** custom log (it might take a few minutes before the results appear)
