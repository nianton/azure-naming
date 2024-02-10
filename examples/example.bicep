import { NamingOutput } from '../dist/naming.module.bicep'

param naming NamingOutput
param location string = resourceGroup().location

var serviceNames = {
  appServicePlan: naming.appServicePlan.name
  webApplication: naming.appService.name
  storageAccount: naming.storageAccount.nameUnique
}

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: serviceNames.storageAccount
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: serviceNames.appServicePlan
  location: location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

resource webApplication 'Microsoft.Web/sites@2018-11-01' = {
  name: serviceNames.webApplication
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
