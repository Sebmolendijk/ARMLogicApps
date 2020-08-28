# GCP-Reporting

This Logic App collect GCP recommendations from Microsoft Cloud App Security and send it to a Log Analytics workspace for analysis.
More details on this capabiliy can be found in [MCAS documentation](https://docs.microsoft.com/en-us/cloud-app-security/connect-google-gcp-to-microsoft-cloud-app-security "MCAS documentation") 

## Deployment steps

1. Create a Resource Group where you'll deploy your Logic App
1. Create a Log Analytics workspace where you'll store the data (you can use an existing workspace)
1. Modify the **GCP-Reporting.parameters.json** parameter file to include:
  1. Your Logic App name
  1. The name of the Log Analytics connection to use (the default value is provided in the file)
  1. Your MCAS tenant URL
  1. An MCAS API token (Details [here](https://docs.microsoft.com/en-us/cloud-app-security/api-tokens))
 
