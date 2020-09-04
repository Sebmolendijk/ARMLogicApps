$today=Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName="InfrequentCountryTriageLogicApp_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName Dev -TemplateFile .\MdatpComputerEnrichment.template.json -TemplateParameterFile .\aadSP.parameters.json -Name $deploymentName -Verbose