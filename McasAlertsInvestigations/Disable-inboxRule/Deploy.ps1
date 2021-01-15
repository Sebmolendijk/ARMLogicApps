$today=Get-Date -Format "MM-dd-yyyy"
$suffix = Get-Random -Maximum 100
$deploymentName="Disable-InboxRule_" + $today + "_$suffix"

Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName Dev -TemplateFile .\azuredeploy.json -TemplateParameterFile C:\GitHub\parameters\mcasToken.parameters.json -Name $deploymentName -Verbose

