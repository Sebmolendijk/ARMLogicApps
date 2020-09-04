$today=Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName="InfrequentCountryTriageLogicApp_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName CSPM -TemplateFile .\GCP-Reporting.template.json -TemplateParameterFile .\GCP-Reporting.parameters.json -Name $deploymentName -Verbose