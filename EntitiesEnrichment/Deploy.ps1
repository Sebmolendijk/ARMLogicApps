$today=Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName="EntitiesEnrichment_" + $today + "_$suffix"

Import-Module Az.Resources
#New-AzResourceGroupDeployment -ResourceGroupName Dev -TemplateFile .\UserEnrichment.template.json -TemplateParameterFile "C:\GitHub\parameters\aadSP.parameters.json" -Name $deploymentName -Verbose

New-AzResourceGroupDeployment -ResourceGroupName Dev -TemplateFile .\Get-AlertEntitiesEnrichment.json -Name $deploymentName -Verbose