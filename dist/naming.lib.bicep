/**
 * Azure naming function library - helps maintaining a consistent naming convention
 * Licensed to use under the MIT license.
 * ----------------------------------------------------------------------------
 * Module repository & documentation: https://github.com/nianton/azure-naming
 * Starter repository template:       https://github.com/nianton/bicep-starter
 * ----------------------------------------------------------------------------
 * Microsoft naming convention best practices (supports user-defined types and compile time imports)
 * https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming
 * ----------------------------------------------------------------------------
 * Generated/built on: 2024-09-23T07:36:26.760Z
 */

metadata name = 'Azure Naming function library'
metadata description = 'Function library to maintain a consistent naming of Azure resources.'
metadata owner = 'https://github.com/nianton'

// ============================= //
//  Internal utility functions   //
// ============================= //

func placeholder() string => '[****]'

@export()
func locationPlaceholder() string => '**location**'

func delimiter(useDashes bool) string => useDashes ? '-' : ''

func regionAbbreviations() object => {
  australiacentral: 'auc'
  australiacentral2: 'auc2'
  australiaeast: 'aue'
  australiasoutheast: 'ause'
  brazilsouth: 'brs'
  brazilsoutheast: 'brse'
  brazilus: 'brus'
  canadacentral: 'canc'
  canadaeast: 'cane'
  centralindia: 'cin'
  centralus: 'cus'
  centraluseuap: 'cuseuap'
  eastasia: 'ea'
  eastus: 'eus'
  eastus2: 'eus2'
  eastus2euap: 'eus2euap'
  eastusstg: 'eusstg'
  francecentral: 'frc'
  francesouth: 'frs'
  germanynorth: 'gern'
  germanywestcentral: 'gerwc'
  israelcentral: 'isc'
  italynorth: 'itn'
  japaneast: 'jae'
  japanwest: 'jaw'
  jioindiacentral: 'jioinc'
  jioindiawest: 'jioinw'
  koreacentral: 'koc'
  koreasouth: 'kors'
  mexicocentral: 'mxc'
  northcentralus: 'ncus'
  northeurope: 'neu'
  norwayeast: 'nore'
  norwaywest: 'norw'
  polandcentral: 'polc'
  qatarcentral: 'qatc'
  southafricanorth: 'san'
  southafricawest: 'saw'
  southcentralus: 'scus'
  southeastasia: 'sea'
  southindia: 'sin'
  swedencentral: 'swc'
  switzerlandnorth: 'swn'
  switzerlandwest: 'sww'
  uaecentral: 'uaec'
  uaenorth: 'uaen'
  uksouth: 'uks'
  ukwest: 'ukw'
  westcentralus: 'wcus'
  westeurope: 'weu'
  westindia: 'win'
  westus: 'wus'
  westus2: 'wus2'
  westus3: 'wus3'
}

func configWithIndex(config NamingConfig, index int) NamingConfig => {
  prefix: config.prefix
  suffix: concat(config.suffix, [padLeft(string(index), 3, '0')])
  useDashes: config.useDashes
  useLowerCase: config.useLowerCase
  uniqueLength: config.uniqueLength
  uniqueSeed: config.uniqueSeed
  location: config.location
}

func configWithSuffix(config NamingConfig, additionalSuffix array) NamingConfig => {
  prefix: config.prefix
  suffix: concat(config.suffix, additionalSuffix)
  useDashes: config.useDashes
  useLowerCase: config.useLowerCase
  uniqueLength: config.uniqueLength
  uniqueSeed: config.uniqueSeed
  location: config.location
}

func stringify(array array, delimit string) string =>
  '${replace(replace(replace(string(array), '["', ''), '"]', ''), '","', delimit)}'

func createNamingPart(prefixOrSuffix array, useDashes bool, useLowerCase bool) string => 
  empty(prefixOrSuffix) 
  ? '' 
  : useLowerCase 
    ? toLower(stringify(prefixOrSuffix, delimiter(useDashes)))
    : stringify(prefixOrSuffix, delimiter(useDashes))

func prefix(config NamingConfig) string => 
  replace(createNamingPart(config.prefix, config.useDashes, config.useLowerCase), locationPlaceholder(), regionAbbreviations()[config.location])
  
func suffix(config NamingConfig) string =>
  replace(createNamingPart(config.suffix, config.useDashes, config.useLowerCase), locationPlaceholder(), regionAbbreviations()[config.location])

func uniquePart(config NamingConfig) string => 
  config.uniqueLength > 0 ? toLower(take(uniqueString(config.uniqueSeed), config.uniqueLength)) : ''

func nameTemplate(config NamingConfig) string => join(filter([
    prefix(config)
    placeholder()
    suffix(config)
  ], s => !empty(s)), delimiter(config.useDashes))

func nameUniqueTemplate(config NamingConfig) string => join(filter([
    prefix(config)
    placeholder()
    suffix(config)
    uniquePart(config)
  ], s => !empty(s)), delimiter(config.useDashes))

func nameSafeTemplate(config NamingConfig) string =>
  toLower(replace(nameTemplate(config), delimiter(config.useDashes), ''))

func nameUniqueSafeTemplate(config NamingConfig) string =>
  toLower(replace(nameUniqueTemplate(config), delimiter(config.useDashes), ''))

func name(config NamingConfig, slug string, maxLength int) string => 
  nameInner(nameTemplate(config), slug, maxLength, delimiter(config.useDashes))

func nameUnique(config NamingConfig, slug string, maxLength int) string => 
  nameInner(nameUniqueTemplate(config), slug, maxLength, delimiter(config.useDashes))

func nameSafe(config NamingConfig, slug string, maxLength int) string => 
  nameInner(nameSafeTemplate(config), slug, maxLength, delimiter(config.useDashes))

func nameSafeUnique(config NamingConfig, slug string, maxLength int) string => 
  nameInner(nameUniqueSafeTemplate(config), slug, maxLength, delimiter(config.useDashes))

func nameInner(templatedName string, slug string, maxLength int, delimiterChar string) string => 
  endsWith(take(replace(templatedName, placeholder(), slug), maxLength), delimiterChar) 
    ? take(replace(templatedName, placeholder(), slug), maxLength - 1) 
    : take(replace(templatedName, placeholder(), slug), maxLength)


// ==================== //
//  Exported functions  //
// ==================== //

@export()
@description('Returns a placeholder string for location')
func locationPlaceholder() string => '**location**'

@export()
func subnet(config NamingConfig, index int) string => 
  name(configWithIndex(config, index), 'subnet', 80)

@description('Creates the naming convention base on the configuration for Azure resources')
@export()
func appService(config NamingConfig, suffix string) string =>
  name(configWithSuffix(config, [suffix]), 'app', 60)

@description('Create a naming config defining only the suffix values array.')
@export()
func createConfig(suffix array) NamingConfig => {
  location: resourceGroup().location
  prefix: []
  suffix: suffix
  useDashes: true
  useLowerCase: true
  uniqueLength: 6
  uniqueSeed: resourceGroup().id
}

@description('Create resource names defining only the suffix values array.')
@export()
func createResourceNamesWithSuffix(suffix array) NamingOutput => 
  createResourceNames(createConfig(suffix))

@export()
func createResourceNames(config NamingConfig) object => {
  aiSearch: { 
    name: name(config, 'srch', 60)
    nameUnique: nameUnique(config, 'srch', 60)
    slug: 'srch'
  }
  analysisServicesServer: { 
    name: nameSafe(config, 'as', 63)
    nameUnique: nameSafeUnique(config, 'as', 63)
    slug: 'as'
  }
  apiManagement: { 
    name: nameSafe(config, 'apim', 50)
    nameUnique: nameSafeUnique(config, 'apim', 50)
    slug: 'apim'
  }
  appConfiguration: { 
    name: name(config, 'appcg', 50)
    nameUnique: nameUnique(config, 'appcg', 50)
    slug: 'appcg'
  }
  appServiceEnvironment: { 
    name: name(config, 'ase', 36)
    nameUnique: nameUnique(config, 'ase', 36)
    slug: 'ase'
  }
  appServicePlan: { 
    name: name(config, 'plan', 40)
    nameUnique: nameUnique(config, 'plan', 40)
    slug: 'plan'
  }
  appService: { 
    name: name(config, 'app', 60)
    nameUnique: nameUnique(config, 'app', 60)
    slug: 'app'
  }
  applicationGateway: { 
    name: name(config, 'agw', 80)
    nameUnique: nameUnique(config, 'agw', 80)
    slug: 'agw'
  }
  applicationInsights: { 
    name: name(config, 'appi', 260)
    nameUnique: nameUnique(config, 'appi', 260)
    slug: 'appi'
  }
  applicationSecurityGroup: { 
    name: name(config, 'asg', 80)
    nameUnique: nameUnique(config, 'asg', 80)
    slug: 'asg'
  }
  automationAccount: { 
    name: name(config, 'aa', 50)
    nameUnique: nameUnique(config, 'aa', 50)
    slug: 'aa'
  }
  automationCertificate: { 
    name: name(config, 'aacert', 128)
    nameUnique: nameUnique(config, 'aacert', 128)
    slug: 'aacert'
  }
  automationCredential: { 
    name: name(config, 'aacred', 128)
    nameUnique: nameUnique(config, 'aacred', 128)
    slug: 'aacred'
  }
  automationRunbook: { 
    name: name(config, 'aacred', 63)
    nameUnique: nameUnique(config, 'aacred', 63)
    slug: 'aacred'
  }
  automationSchedule: { 
    name: name(config, 'aasched', 128)
    nameUnique: nameUnique(config, 'aasched', 128)
    slug: 'aasched'
  }
  automationVariable: { 
    name: name(config, 'aavar', 128)
    nameUnique: nameUnique(config, 'aavar', 128)
    slug: 'aavar'
  }
  availabilitySet: { 
    name: name(config, 'avail', 80)
    nameUnique: nameUnique(config, 'avail', 80)
    slug: 'avail'
  }
  bastionHost: { 
    name: name(config, 'bas', 80)
    nameUnique: nameUnique(config, 'bas', 80)
    slug: 'bas'
  }
  batchAccount: { 
    name: nameSafe(config, 'ba', 24)
    nameUnique: nameSafeUnique(config, 'ba', 24)
    slug: 'ba'
  }
  batchApplication: { 
    name: name(config, 'baapp', 64)
    nameUnique: nameUnique(config, 'baapp', 64)
    slug: 'baapp'
  }
  batchCertificate: { 
    name: name(config, 'bacert', 45)
    nameUnique: nameUnique(config, 'bacert', 45)
    slug: 'bacert'
  }
  batchPool: { 
    name: name(config, 'bapool', 24)
    nameUnique: nameUnique(config, 'bapool', 24)
    slug: 'bapool'
  }
  botChannelDirectline: { 
    name: name(config, 'botline', 64)
    nameUnique: nameUnique(config, 'botline', 64)
    slug: 'botline'
  }
  botChannelEmail: { 
    name: name(config, 'botmail', 64)
    nameUnique: nameUnique(config, 'botmail', 64)
    slug: 'botmail'
  }
  botChannelMsTeams: { 
    name: name(config, 'botteams', 64)
    nameUnique: nameUnique(config, 'botteams', 64)
    slug: 'botteams'
  }
  botChannelSlack: { 
    name: name(config, 'botslack', 64)
    nameUnique: nameUnique(config, 'botslack', 64)
    slug: 'botslack'
  }
  botChannelsRegistration: { 
    name: name(config, 'botchan', 64)
    nameUnique: nameUnique(config, 'botchan', 64)
    slug: 'botchan'
  }
  botConnection: { 
    name: name(config, 'botcon', 64)
    nameUnique: nameUnique(config, 'botcon', 64)
    slug: 'botcon'
  }
  botWebApp: { 
    name: name(config, 'bot', 64)
    nameUnique: nameUnique(config, 'bot', 64)
    slug: 'bot'
  }
  cdnEndpoint: { 
    name: name(config, 'cdn', 50)
    nameUnique: nameUnique(config, 'cdn', 50)
    slug: 'cdn'
  }
  cdnProfile: { 
    name: name(config, 'cdnprof', 260)
    nameUnique: nameUnique(config, 'cdnprof', 260)
    slug: 'cdnprof'
  }
  chaosExperiment: { 
    name: name(config, 'chaosexp', 128)
    nameUnique: nameUnique(config, 'chaosexp', 128)
    slug: 'chaosexp'
  }
  chaosTarget: { 
    name: name(config, 'chaostarget', 128)
    nameUnique: nameUnique(config, 'chaostarget', 128)
    slug: 'chaostarget'
  }
  cognitiveAccount: { 
    name: name(config, 'cog', 64)
    nameUnique: nameUnique(config, 'cog', 64)
    slug: 'cog'
  }
  cognitiveServicesOpenAi: { 
    name: name(config, 'oai', 64)
    nameUnique: nameUnique(config, 'oai', 64)
    slug: 'oai'
  }
  cognitiveServicesComputerVision: { 
    name: name(config, 'cv', 64)
    nameUnique: nameUnique(config, 'cv', 64)
    slug: 'cv'
  }
  cognitiveServicesContentModerator: { 
    name: name(config, 'cm', 64)
    nameUnique: nameUnique(config, 'cm', 64)
    slug: 'cm'
  }
  cognitiveServicesContentSafety: { 
    name: name(config, 'cs', 64)
    nameUnique: nameUnique(config, 'cs', 64)
    slug: 'cs'
  }
  cognitiveServicesCustomVisionPrediction: { 
    name: name(config, 'cstv', 64)
    nameUnique: nameUnique(config, 'cstv', 64)
    slug: 'cstv'
  }
  cognitiveServicesCustomVisionTraining: { 
    name: name(config, 'cstvt', 64)
    nameUnique: nameUnique(config, 'cstvt', 64)
    slug: 'cstvt'
  }
  cognitiveServicesDocumentIntelligence: { 
    name: name(config, 'di', 64)
    nameUnique: nameUnique(config, 'di', 64)
    slug: 'di'
  }
  cognitiveServicesMultiServiceAccount: { 
    name: name(config, 'aisa', 64)
    nameUnique: nameUnique(config, 'aisa', 64)
    slug: 'aisa'
  }
  cognitiveServicesVideoIndexer: { 
    name: name(config, 'avi', 64)
    nameUnique: nameUnique(config, 'avi', 64)
    slug: 'avi'
  }
  cognitiveServicesFaceApi: { 
    name: name(config, 'face', 64)
    nameUnique: nameUnique(config, 'face', 64)
    slug: 'face'
  }
  cognitiveServicesImmersiveReader: { 
    name: name(config, 'ir', 64)
    nameUnique: nameUnique(config, 'ir', 64)
    slug: 'ir'
  }
  cognitiveServicesLanguageService: { 
    name: name(config, 'lang', 64)
    nameUnique: nameUnique(config, 'lang', 64)
    slug: 'lang'
  }
  cognitiveServicesSpeechService: { 
    name: name(config, 'spch', 64)
    nameUnique: nameUnique(config, 'spch', 64)
    slug: 'spch'
  }
  cognitiveServicesTranslator: { 
    name: name(config, 'trsl', 64)
    nameUnique: nameUnique(config, 'trsl', 64)
    slug: 'trsl'
  }
  containerApps: { 
    name: name(config, 'ca', 32)
    nameUnique: nameUnique(config, 'ca', 32)
    slug: 'ca'
  }
  containerAppsEnvironment: { 
    name: name(config, 'cae', 64)
    nameUnique: nameUnique(config, 'cae', 64)
    slug: 'cae'
  }
  containerGroup: { 
    name: name(config, 'cg', 63)
    nameUnique: nameUnique(config, 'cg', 63)
    slug: 'cg'
  }
  containerRegistry: { 
    name: nameSafe(config, 'acr', 63)
    nameUnique: nameSafeUnique(config, 'acr', 63)
    slug: 'acr'
  }
  containerRegistryWebhook: { 
    name: nameSafe(config, 'crwh', 50)
    nameUnique: nameSafeUnique(config, 'crwh', 50)
    slug: 'crwh'
  }
  cosmosdbAccount: { 
    name: name(config, 'cosmos', 63)
    nameUnique: nameUnique(config, 'cosmos', 63)
    slug: 'cosmos'
  }
  customProvider: { 
    name: name(config, 'prov', 64)
    nameUnique: nameUnique(config, 'prov', 64)
    slug: 'prov'
  }
  dashboard: { 
    name: name(config, 'dsb', 160)
    nameUnique: nameUnique(config, 'dsb', 160)
    slug: 'dsb'
  }
  dataFactory: { 
    name: name(config, 'adf', 63)
    nameUnique: nameUnique(config, 'adf', 63)
    slug: 'adf'
  }
  dataFactoryDatasetMysql: { 
    name: name(config, 'adfmysql', 260)
    nameUnique: nameUnique(config, 'adfmysql', 260)
    slug: 'adfmysql'
  }
  dataFactoryDatasetPostgresql: { 
    name: name(config, 'adfpsql', 260)
    nameUnique: nameUnique(config, 'adfpsql', 260)
    slug: 'adfpsql'
  }
  dataFactoryDatasetSqlServerTable: { 
    name: name(config, 'adfmssql', 260)
    nameUnique: nameUnique(config, 'adfmssql', 260)
    slug: 'adfmssql'
  }
  dataFactoryIntegrationRuntimeManaged: { 
    name: name(config, 'adfir', 63)
    nameUnique: nameUnique(config, 'adfir', 63)
    slug: 'adfir'
  }
  dataFactoryLinkedServiceDataLakeStorageGen2: { 
    name: name(config, 'adfsvst', 260)
    nameUnique: nameUnique(config, 'adfsvst', 260)
    slug: 'adfsvst'
  }
  dataFactoryLinkedServiceKeyVault: { 
    name: name(config, 'adfsvkv', 260)
    nameUnique: nameUnique(config, 'adfsvkv', 260)
    slug: 'adfsvkv'
  }
  dataFactoryLinkedServiceMysql: { 
    name: name(config, 'adfsvmysql', 260)
    nameUnique: nameUnique(config, 'adfsvmysql', 260)
    slug: 'adfsvmysql'
  }
  dataFactoryLinkedServicePostgresql: { 
    name: name(config, 'adfsvpsql', 260)
    nameUnique: nameUnique(config, 'adfsvpsql', 260)
    slug: 'adfsvpsql'
  }
  dataFactoryLinkedServiceSqlServer: { 
    name: name(config, 'adfsvmssql', 260)
    nameUnique: nameUnique(config, 'adfsvmssql', 260)
    slug: 'adfsvmssql'
  }
  dataFactoryPipeline: { 
    name: name(config, 'adfpl', 260)
    nameUnique: nameUnique(config, 'adfpl', 260)
    slug: 'adfpl'
  }
  dataFactoryTriggerSchedule: { 
    name: name(config, 'adftg', 260)
    nameUnique: nameUnique(config, 'adftg', 260)
    slug: 'adftg'
  }
  dataLakeAnalyticsAccount: { 
    name: nameSafe(config, 'dla', 24)
    nameUnique: nameSafeUnique(config, 'dla', 24)
    slug: 'dla'
  }
  dataLakeAnalyticsFirewallRule: { 
    name: name(config, 'dlfw', 50)
    nameUnique: nameUnique(config, 'dlfw', 50)
    slug: 'dlfw'
  }
  dataLakeStore: { 
    name: nameSafe(config, 'dls', 24)
    nameUnique: nameSafeUnique(config, 'dls', 24)
    slug: 'dls'
  }
  dataLakeStoreFirewallRule: { 
    name: name(config, 'dlsfw', 50)
    nameUnique: nameUnique(config, 'dlsfw', 50)
    slug: 'dlsfw'
  }
  databaseMigrationProject: { 
    name: name(config, 'migr', 57)
    nameUnique: nameUnique(config, 'migr', 57)
    slug: 'migr'
  }
  databaseMigrationService: { 
    name: name(config, 'dms', 62)
    nameUnique: nameUnique(config, 'dms', 62)
    slug: 'dms'
  }
  databricksWorkspace: { 
    name: name(config, 'dbw', 30)
    nameUnique: nameUnique(config, 'dbw', 30)
    slug: 'dbw'
  }
  devTestLab: { 
    name: name(config, 'lab', 50)
    nameUnique: nameUnique(config, 'lab', 50)
    slug: 'lab'
  }
  devTestLinuxVirtualMachine: { 
    name: name(config, 'labvm', 64)
    nameUnique: nameUnique(config, 'labvm', 64)
    slug: 'labvm'
  }
  devTestWindowsVirtualMachine: { 
    name: name(config, 'labvm', 15)
    nameUnique: nameUnique(config, 'labvm', 15)
    slug: 'labvm'
  }
  diskEncryptionSet: { 
    name: name(config, 'des', 80)
    nameUnique: nameUnique(config, 'des', 80)
    slug: 'des'
  }
  dnsZone: { 
    name: name(config, 'dns', 63)
    nameUnique: nameUnique(config, 'dns', 63)
    slug: 'dns'
  }
  eventGridDomain: { 
    name: name(config, 'egd', 50)
    nameUnique: nameUnique(config, 'egd', 50)
    slug: 'egd'
  }
  eventGridDomainTopic: { 
    name: name(config, 'egdt', 50)
    nameUnique: nameUnique(config, 'egdt', 50)
    slug: 'egdt'
  }
  eventGridEventSubscription: { 
    name: name(config, 'egs', 64)
    nameUnique: nameUnique(config, 'egs', 64)
    slug: 'egs'
  }
  eventGridTopic: { 
    name: name(config, 'egt', 50)
    nameUnique: nameUnique(config, 'egt', 50)
    slug: 'egt'
  }
  eventHub: { 
    name: name(config, 'evh', 50)
    nameUnique: nameUnique(config, 'evh', 50)
    slug: 'evh'
  }
  eventHubAuthorizationRule: { 
    name: name(config, 'ehar', 50)
    nameUnique: nameUnique(config, 'ehar', 50)
    slug: 'ehar'
  }
  eventHubConsumerGroup: { 
    name: name(config, 'ehcg', 50)
    nameUnique: nameUnique(config, 'ehcg', 50)
    slug: 'ehcg'
  }
  eventHubNamespace: { 
    name: name(config, 'ehn', 50)
    nameUnique: nameUnique(config, 'ehn', 50)
    slug: 'ehn'
  }
  eventHubNamespaceAuthorizationRule: { 
    name: name(config, 'ehnar', 50)
    nameUnique: nameUnique(config, 'ehnar', 50)
    slug: 'ehnar'
  }
  eventHubNamespaceDisasterRecoveryConfig: { 
    name: name(config, 'ehdr', 50)
    nameUnique: nameUnique(config, 'ehdr', 50)
    slug: 'ehdr'
  }
  expressRouteCircuit: { 
    name: name(config, 'erc', 80)
    nameUnique: nameUnique(config, 'erc', 80)
    slug: 'erc'
  }
  expressRouteGateway: { 
    name: name(config, 'ergw', 80)
    nameUnique: nameUnique(config, 'ergw', 80)
    slug: 'ergw'
  }
  firewall: { 
    name: name(config, 'afw', 80)
    nameUnique: nameUnique(config, 'afw', 80)
    slug: 'afw'
  }
  firewallPolicy: { 
    name: name(config, 'afwp', 80)
    nameUnique: nameUnique(config, 'afwp', 80)
    slug: 'afwp'
  }
  frontDoor: { 
    name: name(config, 'fd', 64)
    nameUnique: nameUnique(config, 'fd', 64)
    slug: 'fd'
  }
  frontDoorFirewallPolicy: { 
    name: name(config, 'fdfw', 80)
    nameUnique: nameUnique(config, 'fdfw', 80)
    slug: 'fdfw'
  }
  functionApp: { 
    name: name(config, 'func', 60)
    nameUnique: nameUnique(config, 'func', 60)
    slug: 'func'
  }
  grafana: { 
    name: name(config, 'grfn', 23)
    nameUnique: nameUnique(config, 'grfn', 23)
    slug: 'grfn'
  }
  hdInsightHadoopCluster: { 
    name: name(config, 'hadoop', 59)
    nameUnique: nameUnique(config, 'hadoop', 59)
    slug: 'hadoop'
  }
  hdInsightHbaseCluster: { 
    name: name(config, 'hbase', 59)
    nameUnique: nameUnique(config, 'hbase', 59)
    slug: 'hbase'
  }
  hdInsightInteractiveQueryCluster: { 
    name: name(config, 'iqr', 59)
    nameUnique: nameUnique(config, 'iqr', 59)
    slug: 'iqr'
  }
  hdInsightKafkaCluster: { 
    name: name(config, 'kafka', 59)
    nameUnique: nameUnique(config, 'kafka', 59)
    slug: 'kafka'
  }
  hdInsightMlServicesCluster: { 
    name: name(config, 'mls', 59)
    nameUnique: nameUnique(config, 'mls', 59)
    slug: 'mls'
  }
  hdInsightRserverCluster: { 
    name: name(config, 'rsv', 59)
    nameUnique: nameUnique(config, 'rsv', 59)
    slug: 'rsv'
  }
  hdInsightSparkCluster: { 
    name: name(config, 'spark', 59)
    nameUnique: nameUnique(config, 'spark', 59)
    slug: 'spark'
  }
  hdInsightStormCluster: { 
    name: name(config, 'storm', 59)
    nameUnique: nameUnique(config, 'storm', 59)
    slug: 'storm'
  }
  image: { 
    name: name(config, 'img', 80)
    nameUnique: nameUnique(config, 'img', 80)
    slug: 'img'
  }
  iotCentralApplication: { 
    name: name(config, 'iotapp', 63)
    nameUnique: nameUnique(config, 'iotapp', 63)
    slug: 'iotapp'
  }
  iotHub: { 
    name: name(config, 'iot', 50)
    nameUnique: nameUnique(config, 'iot', 50)
    slug: 'iot'
  }
  iotHubConsumerGroup: { 
    name: name(config, 'iotcg', 50)
    nameUnique: nameUnique(config, 'iotcg', 50)
    slug: 'iotcg'
  }
  iotHubDps: { 
    name: name(config, 'dps', 64)
    nameUnique: nameUnique(config, 'dps', 64)
    slug: 'dps'
  }
  iotHubDpsCertificate: { 
    name: name(config, 'dpscert', 64)
    nameUnique: nameUnique(config, 'dpscert', 64)
    slug: 'dpscert'
  }
  keyVault: { 
    name: name(config, 'kv', 24)
    nameUnique: nameUnique(config, 'kv', 24)
    slug: 'kv'
  }
  keyVaultCertificate: { 
    name: name(config, 'kvc', 127)
    nameUnique: nameUnique(config, 'kvc', 127)
    slug: 'kvc'
  }
  keyVaultKey: { 
    name: name(config, 'kvk', 127)
    nameUnique: nameUnique(config, 'kvk', 127)
    slug: 'kvk'
  }
  keyVaultSecret: { 
    name: name(config, 'kvs', 127)
    nameUnique: nameUnique(config, 'kvs', 127)
    slug: 'kvs'
  }
  kubernetesCluster: { 
    name: name(config, 'aks', 63)
    nameUnique: nameUnique(config, 'aks', 63)
    slug: 'aks'
  }
  kustoCluster: { 
    name: nameSafe(config, 'kc', 22)
    nameUnique: nameSafeUnique(config, 'kc', 22)
    slug: 'kc'
  }
  kustoDatabase: { 
    name: name(config, 'kdb', 260)
    nameUnique: nameUnique(config, 'kdb', 260)
    slug: 'kdb'
  }
  kustoEventHubDataConnection: { 
    name: name(config, 'kehc', 40)
    nameUnique: nameUnique(config, 'kehc', 40)
    slug: 'kehc'
  }
  loadBalancer: { 
    name: name(config, 'lb', 80)
    nameUnique: nameUnique(config, 'lb', 80)
    slug: 'lb'
  }
  loadBalancerNatRule: { 
    name: name(config, 'lbnatrl', 80)
    nameUnique: nameUnique(config, 'lbnatrl', 80)
    slug: 'lbnatrl'
  }
  loadTesting: { 
    name: name(config, 'lt', 64)
    nameUnique: nameUnique(config, 'lt', 64)
    slug: 'lt'
  }
  linuxVirtualMachine: { 
    name: name(config, 'vm', 64)
    nameUnique: nameUnique(config, 'vm', 64)
    slug: 'vm'
  }
  linuxVirtualMachineScaleSet: { 
    name: name(config, 'vmss', 64)
    nameUnique: nameUnique(config, 'vmss', 64)
    slug: 'vmss'
  }
  localNetworkGateway: { 
    name: name(config, 'lgw', 80)
    nameUnique: nameUnique(config, 'lgw', 80)
    slug: 'lgw'
  }
  logicApp: { 
    name: name(config, 'logic', 43)
    nameUnique: nameUnique(config, 'logic', 43)
    slug: 'logic'
  }
  logAnalyticsWorkspace: { 
    name: name(config, 'log', 63)
    nameUnique: nameUnique(config, 'log', 63)
    slug: 'log'
  }
  machineLearningWorkspace: { 
    name: name(config, 'mlw', 260)
    nameUnique: nameUnique(config, 'mlw', 260)
    slug: 'mlw'
  }
  managedDisk: { 
    name: name(config, 'dsk', 80)
    nameUnique: nameUnique(config, 'dsk', 80)
    slug: 'dsk'
  }
  managedIdentity: { 
    name: name(config, 'id', 128)
    nameUnique: nameUnique(config, 'id', 128)
    slug: 'id'
  }
  mapsAccount: { 
    name: name(config, 'map', 98)
    nameUnique: nameUnique(config, 'map', 98)
    slug: 'map'
  }
  mariadbDatabase: { 
    name: name(config, 'mariadb', 63)
    nameUnique: nameUnique(config, 'mariadb', 63)
    slug: 'mariadb'
  }
  mariadbFirewallRule: { 
    name: name(config, 'mariafw', 128)
    nameUnique: nameUnique(config, 'mariafw', 128)
    slug: 'mariafw'
  }
  mariadbServer: { 
    name: name(config, 'maria', 63)
    nameUnique: nameUnique(config, 'maria', 63)
    slug: 'maria'
  }
  mariadbVirtualNetworkRule: { 
    name: name(config, 'mariavn', 128)
    nameUnique: nameUnique(config, 'mariavn', 128)
    slug: 'mariavn'
  }
  mssqlDatabase: { 
    name: name(config, 'sqldb', 128)
    nameUnique: nameUnique(config, 'sqldb', 128)
    slug: 'sqldb'
  }
  mssqlElasticpool: { 
    name: name(config, 'sqlep', 128)
    nameUnique: nameUnique(config, 'sqlep', 128)
    slug: 'sqlep'
  }
  mssqlServer: { 
    name: name(config, 'sql', 63)
    nameUnique: nameUnique(config, 'sql', 63)
    slug: 'sql'
  }
  mysqlDatabase: { 
    name: name(config, 'mysqldb', 63)
    nameUnique: nameUnique(config, 'mysqldb', 63)
    slug: 'mysqldb'
  }
  mysqlFirewallRule: { 
    name: name(config, 'mysqlfw', 128)
    nameUnique: nameUnique(config, 'mysqlfw', 128)
    slug: 'mysqlfw'
  }
  mysqlServer: { 
    name: name(config, 'mysql', 63)
    nameUnique: nameUnique(config, 'mysql', 63)
    slug: 'mysql'
  }
  mysqlVirtualNetworkRule: { 
    name: name(config, 'mysqlvn', 128)
    nameUnique: nameUnique(config, 'mysqlvn', 128)
    slug: 'mysqlvn'
  }
  networkInterface: { 
    name: name(config, 'nic', 80)
    nameUnique: nameUnique(config, 'nic', 80)
    slug: 'nic'
  }
  networkSecurityGroup: { 
    name: name(config, 'nsg', 80)
    nameUnique: nameUnique(config, 'nsg', 80)
    slug: 'nsg'
  }
  networkSecurityGroupRule: { 
    name: name(config, 'nsgr', 80)
    nameUnique: nameUnique(config, 'nsgr', 80)
    slug: 'nsgr'
  }
  networkSecurityRule: { 
    name: name(config, 'nsgr', 80)
    nameUnique: nameUnique(config, 'nsgr', 80)
    slug: 'nsgr'
  }
  networkWatcher: { 
    name: name(config, 'nw', 80)
    nameUnique: nameUnique(config, 'nw', 80)
    slug: 'nw'
  }
  notificationHub: { 
    name: name(config, 'nh', 260)
    nameUnique: nameUnique(config, 'nh', 260)
    slug: 'nh'
  }
  notificationHubAuthorizationRule: { 
    name: name(config, 'dnsrec', 256)
    nameUnique: nameUnique(config, 'dnsrec', 256)
    slug: 'dnsrec'
  }
  notificationHubNamespace: { 
    name: name(config, 'dnsrec', 50)
    nameUnique: nameUnique(config, 'dnsrec', 50)
    slug: 'dnsrec'
  }
  pointToSiteVpnGateway: { 
    name: name(config, 'vpngw', 80)
    nameUnique: nameUnique(config, 'vpngw', 80)
    slug: 'vpngw'
  }
  postgresqlDatabase: { 
    name: name(config, 'psqldb', 63)
    nameUnique: nameUnique(config, 'psqldb', 63)
    slug: 'psqldb'
  }
  postgresqlFirewallRule: { 
    name: name(config, 'psqlfw', 128)
    nameUnique: nameUnique(config, 'psqlfw', 128)
    slug: 'psqlfw'
  }
  postgresqlServer: { 
    name: name(config, 'psql', 63)
    nameUnique: nameUnique(config, 'psql', 63)
    slug: 'psql'
  }
  postgresqlVirtualNetworkRule: { 
    name: name(config, 'psqlvn', 128)
    nameUnique: nameUnique(config, 'psqlvn', 128)
    slug: 'psqlvn'
  }
  powerbiEmbedded: { 
    name: name(config, 'pbi', 63)
    nameUnique: nameUnique(config, 'pbi', 63)
    slug: 'pbi'
  }
  privateDnsZone: { 
    name: name(config, 'pdns', 63)
    nameUnique: nameUnique(config, 'pdns', 63)
    slug: 'pdns'
  }
  publicIp: { 
    name: name(config, 'pip', 80)
    nameUnique: nameUnique(config, 'pip', 80)
    slug: 'pip'
  }
  publicIpPrefix: { 
    name: name(config, 'pippf', 80)
    nameUnique: nameUnique(config, 'pippf', 80)
    slug: 'pippf'
  }
  redisCache: { 
    name: name(config, 'redis', 63)
    nameUnique: nameUnique(config, 'redis', 63)
    slug: 'redis'
  }
  redisFirewallRule: { 
    name: nameSafe(config, 'redisfw', 256)
    nameUnique: nameSafeUnique(config, 'redisfw', 256)
    slug: 'redisfw'
  }
  relayHybridConnection: { 
    name: name(config, 'rlhc', 260)
    nameUnique: nameUnique(config, 'rlhc', 260)
    slug: 'rlhc'
  }
  relayNamespace: { 
    name: name(config, 'rln', 50)
    nameUnique: nameUnique(config, 'rln', 50)
    slug: 'rln'
  }
  resourceGroup: { 
    name: name(config, 'rg', 90)
    nameUnique: nameUnique(config, 'rg', 90)
    slug: 'rg'
  }
  roleAssignment: { 
    name: name(config, 'ra', 64)
    nameUnique: nameUnique(config, 'ra', 64)
    slug: 'ra'
  }
  roleDefinition: { 
    name: name(config, 'rd', 64)
    nameUnique: nameUnique(config, 'rd', 64)
    slug: 'rd'
  }
  route: { 
    name: name(config, 'rt', 80)
    nameUnique: nameUnique(config, 'rt', 80)
    slug: 'rt'
  }
  routeTable: { 
    name: name(config, 'route', 80)
    nameUnique: nameUnique(config, 'route', 80)
    slug: 'route'
  }
  serviceFabricCluster: { 
    name: name(config, 'sf', 23)
    nameUnique: nameUnique(config, 'sf', 23)
    slug: 'sf'
  }
  serviceFabricManagedCluster: { 
    name: name(config, 'sfmc', 23)
    nameUnique: nameUnique(config, 'sfmc', 23)
    slug: 'sfmc'
  }
  serviceBusNamespace: { 
    name: name(config, 'sb', 50)
    nameUnique: nameUnique(config, 'sb', 50)
    slug: 'sb'
  }
  serviceBusNamespaceAuthorizationRule: { 
    name: name(config, 'sbar', 50)
    nameUnique: nameUnique(config, 'sbar', 50)
    slug: 'sbar'
  }
  serviceBusQueue: { 
    name: name(config, 'sbq', 260)
    nameUnique: nameUnique(config, 'sbq', 260)
    slug: 'sbq'
  }
  serviceBusQueueAuthorizationRule: { 
    name: name(config, 'sbqar', 50)
    nameUnique: nameUnique(config, 'sbqar', 50)
    slug: 'sbqar'
  }
  serviceBusSubscription: { 
    name: name(config, 'sbs', 50)
    nameUnique: nameUnique(config, 'sbs', 50)
    slug: 'sbs'
  }
  serviceBusSubscriptionRule: { 
    name: name(config, 'sbsr', 50)
    nameUnique: nameUnique(config, 'sbsr', 50)
    slug: 'sbsr'
  }
  serviceBusTopic: { 
    name: name(config, 'sbt', 260)
    nameUnique: nameUnique(config, 'sbt', 260)
    slug: 'sbt'
  }
  serviceBusTopicAuthorizationRule: { 
    name: name(config, 'dnsrec', 50)
    nameUnique: nameUnique(config, 'dnsrec', 50)
    slug: 'dnsrec'
  }
  sharedImage: { 
    name: name(config, 'si', 80)
    nameUnique: nameUnique(config, 'si', 80)
    slug: 'si'
  }
  sharedImageGallery: { 
    name: nameSafe(config, 'sig', 80)
    nameUnique: nameSafeUnique(config, 'sig', 80)
    slug: 'sig'
  }
  signalrService: { 
    name: name(config, 'sgnlr', 63)
    nameUnique: nameUnique(config, 'sgnlr', 63)
    slug: 'sgnlr'
  }
  snapshots: { 
    name: name(config, 'snap', 80)
    nameUnique: nameUnique(config, 'snap', 80)
    slug: 'snap'
  }
  sqlElasticpool: { 
    name: name(config, 'sqlep', 128)
    nameUnique: nameUnique(config, 'sqlep', 128)
    slug: 'sqlep'
  }
  sqlFailoverGroup: { 
    name: name(config, 'sqlfg', 63)
    nameUnique: nameUnique(config, 'sqlfg', 63)
    slug: 'sqlfg'
  }
  sqlFirewallRule: { 
    name: name(config, 'sqlfw', 128)
    nameUnique: nameUnique(config, 'sqlfw', 128)
    slug: 'sqlfw'
  }
  sqlServer: { 
    name: name(config, 'sql', 63)
    nameUnique: nameUnique(config, 'sql', 63)
    slug: 'sql'
  }
  storageAccount: { 
    name: nameSafe(config, 'st', 24)
    nameUnique: nameSafeUnique(config, 'st', 24)
    slug: 'st'
  }
  storageBlob: { 
    name: name(config, 'blob', 1024)
    nameUnique: nameUnique(config, 'blob', 1024)
    slug: 'blob'
  }
  storageContainer: { 
    name: name(config, 'stct', 63)
    nameUnique: nameUnique(config, 'stct', 63)
    slug: 'stct'
  }
  storageDataLakeGen2Filesystem: { 
    name: name(config, 'stdl', 63)
    nameUnique: nameUnique(config, 'stdl', 63)
    slug: 'stdl'
  }
  storageQueue: { 
    name: name(config, 'stq', 63)
    nameUnique: nameUnique(config, 'stq', 63)
    slug: 'stq'
  }
  storageShare: { 
    name: name(config, 'sts', 63)
    nameUnique: nameUnique(config, 'sts', 63)
    slug: 'sts'
  }
  storageShareDirectory: { 
    name: name(config, 'sts', 63)
    nameUnique: nameUnique(config, 'sts', 63)
    slug: 'sts'
  }
  storageTable: { 
    name: nameSafe(config, 'stt', 63)
    nameUnique: nameSafeUnique(config, 'stt', 63)
    slug: 'stt'
  }
  streamAnalyticsFunctionJavascriptUdf: { 
    name: name(config, 'asafunc', 63)
    nameUnique: nameUnique(config, 'asafunc', 63)
    slug: 'asafunc'
  }
  streamAnalyticsJob: { 
    name: name(config, 'asa', 63)
    nameUnique: nameUnique(config, 'asa', 63)
    slug: 'asa'
  }
  streamAnalyticsOutputBlob: { 
    name: name(config, 'asaoblob', 63)
    nameUnique: nameUnique(config, 'asaoblob', 63)
    slug: 'asaoblob'
  }
  streamAnalyticsOutputEventHub: { 
    name: name(config, 'asaoeh', 63)
    nameUnique: nameUnique(config, 'asaoeh', 63)
    slug: 'asaoeh'
  }
  streamAnalyticsOutputMssql: { 
    name: name(config, 'asaomssql', 63)
    nameUnique: nameUnique(config, 'asaomssql', 63)
    slug: 'asaomssql'
  }
  streamAnalyticsOutputServiceBusQueue: { 
    name: name(config, 'asaosbq', 63)
    nameUnique: nameUnique(config, 'asaosbq', 63)
    slug: 'asaosbq'
  }
  streamAnalyticsOutputServiceBusTopic: { 
    name: name(config, 'asaosbt', 63)
    nameUnique: nameUnique(config, 'asaosbt', 63)
    slug: 'asaosbt'
  }
  streamAnalyticsReferenceInputBlob: { 
    name: name(config, 'asarblob', 63)
    nameUnique: nameUnique(config, 'asarblob', 63)
    slug: 'asarblob'
  }
  streamAnalyticsStreamInputBlob: { 
    name: name(config, 'asaiblob', 63)
    nameUnique: nameUnique(config, 'asaiblob', 63)
    slug: 'asaiblob'
  }
  streamAnalyticsStreamInputEventHub: { 
    name: name(config, 'asaieh', 63)
    nameUnique: nameUnique(config, 'asaieh', 63)
    slug: 'asaieh'
  }
  streamAnalyticsStreamInputIotHub: { 
    name: name(config, 'asaiiot', 63)
    nameUnique: nameUnique(config, 'asaiiot', 63)
    slug: 'asaiiot'
  }
  subnet: { 
    name: name(config, 'snet', 80)
    nameUnique: nameUnique(config, 'snet', 80)
    slug: 'snet'
  }
  templateDeployment: { 
    name: name(config, 'deploy', 64)
    nameUnique: nameUnique(config, 'deploy', 64)
    slug: 'deploy'
  }
  trafficManagerProfile: { 
    name: name(config, 'traf', 63)
    nameUnique: nameUnique(config, 'traf', 63)
    slug: 'traf'
  }
  virtualMachine: { 
    name: name(config, 'vm', 15)
    nameUnique: nameUnique(config, 'vm', 15)
    slug: 'vm'
  }
  virtualMachineScaleSet: { 
    name: name(config, 'vmss', 15)
    nameUnique: nameUnique(config, 'vmss', 15)
    slug: 'vmss'
  }
  virtualNetwork: { 
    name: name(config, 'vnet', 64)
    nameUnique: nameUnique(config, 'vnet', 64)
    slug: 'vnet'
  }
  virtualNetworkGateway: { 
    name: name(config, 'vgw', 80)
    nameUnique: nameUnique(config, 'vgw', 80)
    slug: 'vgw'
  }
  virtualNetworkPeering: { 
    name: name(config, 'vpeer', 80)
    nameUnique: nameUnique(config, 'vpeer', 80)
    slug: 'vpeer'
  }
  virtualWan: { 
    name: name(config, 'vwan', 80)
    nameUnique: nameUnique(config, 'vwan', 80)
    slug: 'vwan'
  }
  windowsVirtualMachine: { 
    name: name(config, 'vm', 15)
    nameUnique: nameUnique(config, 'vm', 15)
    slug: 'vm'
  }
  windowsVirtualMachineScaleSet: { 
    name: name(config, 'vmss', 15)
    nameUnique: nameUnique(config, 'vmss', 15)
    slug: 'vmss'
  }
}

// ================== //
//  Type Definitions  //
// ================== //

@export()
type ServiceNameType = {
  name: string
  nameUnique: string
  slug: string
}

@export()
type NamingConfig = {
  prefix: array
  suffix: array
  uniqueLength: int
  uniqueSeed: string
  useDashes: bool
  useLowerCase: bool
  location: string
}

@export()
type NamingOutput = {
  aiSearch: ServiceNameType
  analysisServicesServer: ServiceNameType
  apiManagement: ServiceNameType
  appConfiguration: ServiceNameType
  appServiceEnvironment: ServiceNameType
  appServicePlan: ServiceNameType
  appService: ServiceNameType
  applicationGateway: ServiceNameType
  applicationInsights: ServiceNameType
  applicationSecurityGroup: ServiceNameType
  automationAccount: ServiceNameType
  automationCertificate: ServiceNameType
  automationCredential: ServiceNameType
  automationRunbook: ServiceNameType
  automationSchedule: ServiceNameType
  automationVariable: ServiceNameType
  availabilitySet: ServiceNameType
  bastionHost: ServiceNameType
  batchAccount: ServiceNameType
  batchApplication: ServiceNameType
  batchCertificate: ServiceNameType
  batchPool: ServiceNameType
  botChannelDirectline: ServiceNameType
  botChannelEmail: ServiceNameType
  botChannelMsTeams: ServiceNameType
  botChannelSlack: ServiceNameType
  botChannelsRegistration: ServiceNameType
  botConnection: ServiceNameType
  botWebApp: ServiceNameType
  cdnEndpoint: ServiceNameType
  cdnProfile: ServiceNameType
  chaosExperiment: ServiceNameType
  chaosTarget: ServiceNameType
  cognitiveAccount: ServiceNameType
  cognitiveServicesOpenAi: ServiceNameType
  cognitiveServicesComputerVision: ServiceNameType
  cognitiveServicesContentModerator: ServiceNameType
  cognitiveServicesContentSafety: ServiceNameType
  cognitiveServicesCustomVisionPrediction: ServiceNameType
  cognitiveServicesCustomVisionTraining: ServiceNameType
  cognitiveServicesDocumentIntelligence: ServiceNameType
  cognitiveServicesMultiServiceAccount: ServiceNameType
  cognitiveServicesVideoIndexer: ServiceNameType
  cognitiveServicesFaceApi: ServiceNameType
  cognitiveServicesImmersiveReader: ServiceNameType
  cognitiveServicesLanguageService: ServiceNameType
  cognitiveServicesSpeechService: ServiceNameType
  cognitiveServicesTranslator: ServiceNameType
  containerApps: ServiceNameType
  containerAppsEnvironment: ServiceNameType
  containerGroup: ServiceNameType
  containerRegistry: ServiceNameType
  containerRegistryWebhook: ServiceNameType
  cosmosdbAccount: ServiceNameType
  customProvider: ServiceNameType
  dashboard: ServiceNameType
  dataFactory: ServiceNameType
  dataFactoryDatasetMysql: ServiceNameType
  dataFactoryDatasetPostgresql: ServiceNameType
  dataFactoryDatasetSqlServerTable: ServiceNameType
  dataFactoryIntegrationRuntimeManaged: ServiceNameType
  dataFactoryLinkedServiceDataLakeStorageGen2: ServiceNameType
  dataFactoryLinkedServiceKeyVault: ServiceNameType
  dataFactoryLinkedServiceMysql: ServiceNameType
  dataFactoryLinkedServicePostgresql: ServiceNameType
  dataFactoryLinkedServiceSqlServer: ServiceNameType
  dataFactoryPipeline: ServiceNameType
  dataFactoryTriggerSchedule: ServiceNameType
  dataLakeAnalyticsAccount: ServiceNameType
  dataLakeAnalyticsFirewallRule: ServiceNameType
  dataLakeStore: ServiceNameType
  dataLakeStoreFirewallRule: ServiceNameType
  databaseMigrationProject: ServiceNameType
  databaseMigrationService: ServiceNameType
  databricksWorkspace: ServiceNameType
  devTestLab: ServiceNameType
  devTestLinuxVirtualMachine: ServiceNameType
  devTestWindowsVirtualMachine: ServiceNameType
  diskEncryptionSet: ServiceNameType
  dnsZone: ServiceNameType
  eventGridDomain: ServiceNameType
  eventGridDomainTopic: ServiceNameType
  eventGridEventSubscription: ServiceNameType
  eventGridTopic: ServiceNameType
  eventHub: ServiceNameType
  eventHubAuthorizationRule: ServiceNameType
  eventHubConsumerGroup: ServiceNameType
  eventHubNamespace: ServiceNameType
  eventHubNamespaceAuthorizationRule: ServiceNameType
  eventHubNamespaceDisasterRecoveryConfig: ServiceNameType
  expressRouteCircuit: ServiceNameType
  expressRouteGateway: ServiceNameType
  firewall: ServiceNameType
  firewallPolicy: ServiceNameType
  frontDoor: ServiceNameType
  frontDoorFirewallPolicy: ServiceNameType
  functionApp: ServiceNameType
  grafana: ServiceNameType
  hdInsightHadoopCluster: ServiceNameType
  hdInsightHbaseCluster: ServiceNameType
  hdInsightInteractiveQueryCluster: ServiceNameType
  hdInsightKafkaCluster: ServiceNameType
  hdInsightMlServicesCluster: ServiceNameType
  hdInsightRserverCluster: ServiceNameType
  hdInsightSparkCluster: ServiceNameType
  hdInsightStormCluster: ServiceNameType
  image: ServiceNameType
  iotCentralApplication: ServiceNameType
  iotHub: ServiceNameType
  iotHubConsumerGroup: ServiceNameType
  iotHubDps: ServiceNameType
  iotHubDpsCertificate: ServiceNameType
  keyVault: ServiceNameType
  keyVaultCertificate: ServiceNameType
  keyVaultKey: ServiceNameType
  keyVaultSecret: ServiceNameType
  kubernetesCluster: ServiceNameType
  kustoCluster: ServiceNameType
  kustoDatabase: ServiceNameType
  kustoEventHubDataConnection: ServiceNameType
  loadBalancer: ServiceNameType
  loadBalancerNatRule: ServiceNameType
  loadTesting: ServiceNameType
  linuxVirtualMachine: ServiceNameType
  linuxVirtualMachineScaleSet: ServiceNameType
  localNetworkGateway: ServiceNameType
  logicApp: ServiceNameType
  logAnalyticsWorkspace: ServiceNameType
  machineLearningWorkspace: ServiceNameType
  managedDisk: ServiceNameType
  managedIdentity: ServiceNameType
  mapsAccount: ServiceNameType
  mariadbDatabase: ServiceNameType
  mariadbFirewallRule: ServiceNameType
  mariadbServer: ServiceNameType
  mariadbVirtualNetworkRule: ServiceNameType
  mssqlDatabase: ServiceNameType
  mssqlElasticpool: ServiceNameType
  mssqlServer: ServiceNameType
  mysqlDatabase: ServiceNameType
  mysqlFirewallRule: ServiceNameType
  mysqlServer: ServiceNameType
  mysqlVirtualNetworkRule: ServiceNameType
  networkInterface: ServiceNameType
  networkSecurityGroup: ServiceNameType
  networkSecurityGroupRule: ServiceNameType
  networkSecurityRule: ServiceNameType
  networkWatcher: ServiceNameType
  notificationHub: ServiceNameType
  notificationHubAuthorizationRule: ServiceNameType
  notificationHubNamespace: ServiceNameType
  pointToSiteVpnGateway: ServiceNameType
  postgresqlDatabase: ServiceNameType
  postgresqlFirewallRule: ServiceNameType
  postgresqlServer: ServiceNameType
  postgresqlVirtualNetworkRule: ServiceNameType
  powerbiEmbedded: ServiceNameType
  privateDnsZone: ServiceNameType
  publicIp: ServiceNameType
  publicIpPrefix: ServiceNameType
  redisCache: ServiceNameType
  redisFirewallRule: ServiceNameType
  relayHybridConnection: ServiceNameType
  relayNamespace: ServiceNameType
  resourceGroup: ServiceNameType
  roleAssignment: ServiceNameType
  roleDefinition: ServiceNameType
  route: ServiceNameType
  routeTable: ServiceNameType
  serviceFabricCluster: ServiceNameType
  serviceFabricManagedCluster: ServiceNameType
  serviceBusNamespace: ServiceNameType
  serviceBusNamespaceAuthorizationRule: ServiceNameType
  serviceBusQueue: ServiceNameType
  serviceBusQueueAuthorizationRule: ServiceNameType
  serviceBusSubscription: ServiceNameType
  serviceBusSubscriptionRule: ServiceNameType
  serviceBusTopic: ServiceNameType
  serviceBusTopicAuthorizationRule: ServiceNameType
  sharedImage: ServiceNameType
  sharedImageGallery: ServiceNameType
  signalrService: ServiceNameType
  snapshots: ServiceNameType
  sqlElasticpool: ServiceNameType
  sqlFailoverGroup: ServiceNameType
  sqlFirewallRule: ServiceNameType
  sqlServer: ServiceNameType
  storageAccount: ServiceNameType
  storageBlob: ServiceNameType
  storageContainer: ServiceNameType
  storageDataLakeGen2Filesystem: ServiceNameType
  storageQueue: ServiceNameType
  storageShare: ServiceNameType
  storageShareDirectory: ServiceNameType
  storageTable: ServiceNameType
  streamAnalyticsFunctionJavascriptUdf: ServiceNameType
  streamAnalyticsJob: ServiceNameType
  streamAnalyticsOutputBlob: ServiceNameType
  streamAnalyticsOutputEventHub: ServiceNameType
  streamAnalyticsOutputMssql: ServiceNameType
  streamAnalyticsOutputServiceBusQueue: ServiceNameType
  streamAnalyticsOutputServiceBusTopic: ServiceNameType
  streamAnalyticsReferenceInputBlob: ServiceNameType
  streamAnalyticsStreamInputBlob: ServiceNameType
  streamAnalyticsStreamInputEventHub: ServiceNameType
  streamAnalyticsStreamInputIotHub: ServiceNameType
  subnet: ServiceNameType
  templateDeployment: ServiceNameType
  trafficManagerProfile: ServiceNameType
  virtualMachine: ServiceNameType
  virtualMachineScaleSet: ServiceNameType
  virtualNetwork: ServiceNameType
  virtualNetworkGateway: ServiceNameType
  virtualNetworkPeering: ServiceNameType
  virtualWan: ServiceNameType
  windowsVirtualMachine: ServiceNameType
  windowsVirtualMachineScaleSet: ServiceNameType
}