import * as naming from '../dist/naming.lib.bicep'

param location string = resourceGroup().location
param applicationName string
param environment string

param namingConfig naming.NamingConfig = {
  location: location
  suffix: [
    applicationName
    environment
    naming.locationPlaceholder()
  ]
  uniqueLength: 6
  uniqueSeed: resourceGroup().id
  useDashes: true
  useLowerCase: true
  prefix: []
}

var names = naming.createResourceNames(namingConfig)

var resourceNames = {
  resourceGroupName: names.resourceGroup.name
  appServicePlan: names.appServicePlan.name
  webApplication: names.appService.nameUnique
  storageAccount: names.storageAccount.nameUnique
  vnet: names.virtualNetwork.name
  subnets: [
    naming.subnet(namingConfig, 1)
    naming.subnet(namingConfig, 2)
    naming.subnet(namingConfig, 3)
    naming.subnet(namingConfig, 4)
    naming.subnet(namingConfig, 5)
  ]
}

// resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
//   name: serviceNames.storageAccount
//   location: location
//   kind: 'StorageV2'
//   sku: {
//     name: 'Standard_LRS'
//   }
// }

// resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
//   name: serviceNames.appServicePlan
//   location: location
//   sku: {
//     name: 'F1'
//     capacity: 1
//   }
// }

// resource webApplication 'Microsoft.Web/sites@2018-11-01' = {
//   name: serviceNames.webApplication
//   location: location
//   tags: {
//     'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${appServicePlan.name}': 'Resource'
//   }
//   properties: {
//     serverFarmId: appServicePlan.id
//   }
// }

// output storageAccountName string = storage.name
// output appServiceName string = webApplication.name
// output appServicePlanName string = appServicePlan.name

output serviceNames object = resourceNames
