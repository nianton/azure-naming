targetScope = 'subscription'

param location string
param applicationName string
param environment string
param tags object = {}

var defaultTags = union({
  applicationName: applicationName
  environment: environment
}, tags)

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${applicationName}-${environment}'
  location: location
  tags: defaultTags
}

module naming '../naming.module.bicep' = {
  scope: resourceGroup(rg.name)
  name: 'NamingDeployment'  
  params: {
    suffix: [
      applicationName
      environment
    ]
    uniqueLength: 6
    uniqueSeed: rg.id
  }
}

module main 'example.bicep' = {
  scope: resourceGroup(rg.name)
  name: 'MainDeployment'
  params: {
    location: location
    naming: naming.outputs.names
  }
}

output appServiceName string = main.outputs.appServiceName
output storageAccountName string = main.outputs.storageAccountName
