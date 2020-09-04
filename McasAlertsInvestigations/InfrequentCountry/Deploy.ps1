$today=Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName="InfrequentCountryTriageLogicApp_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName Dev -TemplateFile .\InfrequentCountryTriage.template.json -TemplateParameterFile ".\mcasToken.parameters.json" -Name $deploymentName -Verbose