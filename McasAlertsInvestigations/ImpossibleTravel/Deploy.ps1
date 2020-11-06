$today = Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName = "ImpossibleTravel_Triage_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName Soc -TemplateFile .\azuredeploy.json -TemplateParameterFile .\.parameters.json -Name $deploymentName -Verbose

