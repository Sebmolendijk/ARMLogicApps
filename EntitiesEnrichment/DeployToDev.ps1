Import-Module Az.Resources
New-AzResourceGroupDeployment -ResourceGroupName CSPM -TemplateFile .\UserEnrichment.template.json -TemplateParameterFile .\UserEnrichment.parameters.json -Name UserEnrichment -Verbose