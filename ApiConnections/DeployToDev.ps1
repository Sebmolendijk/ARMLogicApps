Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName CSPM -TemplateFile .\deployApiConnections.template.json -Name apiConnections -Verbose