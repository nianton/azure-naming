targetScope = 'resourceGroup'
import * as naming from '../dist/naming.lib.bicep'

param location string = resourceGroup().location
param applicationName string
param environment string
param vnetAddressSpace string = '192.168.100.0/24'
param tags object = {}

param timestamp string = utcNow()

param namingConfig naming.NamingConfig = naming.createConfig([
  applicationName
  environment
  naming.locationPlaceholder()
])

var defaultTags = union(tags, {
  application: applicationName
  environment: environment
  latestDeployment: timestamp
})

var names = naming.createResourceNames(namingConfig)

var resourceNames = {
  resourceGroup: names.resourceGroup.name
  appServicePlan: names.appServicePlan.name
  webApplicationFrontEnd: naming.appService(namingConfig, 'frontend')
  webApplicationBackend: naming.appService(namingConfig, 'backend')
  storageAccount: names.storageAccount.nameUnique
  vnet: names.virtualNetwork.name
}

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: resourceNames.storageAccount
  location: location
  kind: 'StorageV2'
  sku: { 
    name: 'Standard_LRS'
  }
  tags: defaultTags
}

resource vnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
  name: resourceNames.vnet
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [vnetAddressSpace]
    }
    subnets: [
      {
        name: naming.subnet(namingConfig, 1)
        properties: {
          addressPrefix: cidrSubnet(vnetAddressSpace, 27, 0)
          privateEndpointNetworkPolicies: 'Disabled'
        }
      }
      {
        name: naming.subnet(namingConfig, 2)
        properties: {
          addressPrefix: cidrSubnet(vnetAddressSpace, 27, 1)
          delegations:[ {
            name: 'webfarmdelegation'
            properties: {
              serviceName: 'Microsoft.Web/serverfarms'
            }
          }]
        }
      }
    ]
  }
  tags: defaultTags
}

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: resourceNames.appServicePlan
  location: location
  sku: {
    name: 'P0V3'
    capacity: 1
  }
}

resource webAppFrontEnd 'Microsoft.Web/sites@2023-12-01' = {
  name: resourceNames.webApplicationFrontEnd
  location: location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/${appServicePlan.name}': 'Resource'
  }
  properties: {
    serverFarmId: appServicePlan.id
    virtualNetworkSubnetId: resourceId('Microsoft.Network/virtualNetworks/subnets', vnet.name, naming.subnet(namingConfig, 2))
    vnetRouteAllEnabled: true
  }
}

output storageAccountName string = storage.name
output appServiceName string = webAppFrontEnd.name
output appServicePlanName string = appServicePlan.name
output serviceNames object = resourceNames
