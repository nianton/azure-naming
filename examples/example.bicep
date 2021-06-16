param naming object
param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: naming.storageAccount.nameUnique
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: naming.appServicePlan.name
  location: resourceGroup().location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

resource webApplication 'Microsoft.Web/sites@2018-11-01' = {
  name: naming.appService.name
  location: location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${appServicePlan.name}': 'Resource'
  }
  properties: {
    serverFarmId: appServicePlan.id
  }
}

output storageAccountName string = storage.name
output appServiceName string = webApplication.name
output appServicePlanName string = appServicePlan.name
