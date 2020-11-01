$today = Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName = "FilePoliciesReportingLogicApp_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName Soc -TemplateFile .\FilePoliciesReporting.template.json -Name $deploymentName -Verbose

