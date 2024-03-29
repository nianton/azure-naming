<!-- NOTE: This is a generated file, do not update directly. -->
<!-- Generated on: 2024-02-11T11:07:18.885Z. -->
# Bicep Azure Naming module

[![bicep-CI](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml/badge.svg)](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml)

Bicep and ARM template module for keeping a consistent Azure resources naming convention, as well as respecting the rules for each resource name (max length, whether dashes are allowed etc). Inspired and based on the nice [Terraform module/implementation](https://github.com/Azure/terraform-azurerm-naming). 

## How to use / Getting started

A template sample repository was created to showcase how to use this module (**https://github.com/nianton/bicep-starter**), and you will also find an example in the **`/examples`** folder, with the **`example.sub.bicep`** demonstrating how to use this module to facilitate naming resources on Azure.

## User-defined types and imports

The naming module now supports user-defined types, as well as the imports, to offer a more strongly-typed reference of the module. The `examples` folder has been updated using this feature, reference: [Documentation Article](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/user-defined-data-types). 
The coding experience would like the below:

<img alt="Naming module VS Code autocomplete" src="assets/namingAnimation.gif?raw=true" height="296" width="739" />

## <a name="reference"></a>Reference

### Input Parameters

| Parameter name | Description | Type | Default value |
| -------- | ---------- | ----------- | ----------- |
| **suffix** | Array of suffix parts to be included in the naming | array(string) | [] |
| **prefix** | Array of prefix parts to be included in the naming  | array(string) | [] |
| **uniqueSeed** | The string be used as the seed for | string | resourceGroup().id |
| **uniqueLength** | The number of characters in the unique part | int | 4 |
| **useDashes** | Whether to use dash (-) as delimiter | bool | true |
| **useLowerCase** | Whether to use lower case letters | bool | true |


## Module `names` object output properties

Below is a reference of the output `names` object values with the following sample input -deployed to 'West Europe' region:

```bicep
suffix = [
  'myapp'
  'dev'
  '**location**' // location/region placeholder, replaced with its abbreviation 
]

uniqueLength = 4
```

### Index: [A](#ref-a) - [B](#ref-b) - [C](#ref-c) - [D](#ref-d) - [E](#ref-e) - [F](#ref-f) - [G](#ref-g) - [H](#ref-h) - [I](#ref-i) - [K](#ref-k) - [L](#ref-l) - [M](#ref-m) - [N](#ref-n) - [P](#ref-p) - [R](#ref-r) - [S](#ref-s) - [T](#ref-t) - [V](#ref-v) - [W](#ref-w)

## <a name="ref-a"></a>A
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`analysisServicesServer`**</sub> | <sub>`as`</sub> | <sub>`asmyappdevweu`</sub> | <sub>`asmyappdevweulllc`</sub> | 
| <sub>**`apiManagement`**</sub> | <sub>`apim`</sub> | <sub>`apimmyappdevweu`</sub> | <sub>`apimmyappdevweulllc`</sub> | 
| <sub>**`appConfiguration`**</sub> | <sub>`appcg`</sub> | <sub>`appcg-myapp-dev-weu`</sub> | <sub>`appcg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`appService`**</sub> | <sub>`app`</sub> | <sub>`app-myapp-dev-weu`</sub> | <sub>`app-myapp-dev-weu-lllc`</sub> | 
| <sub>**`appServiceEnvironment`**</sub> | <sub>`ase`</sub> | <sub>`ase-myapp-dev-weu`</sub> | <sub>`ase-myapp-dev-weu-lllc`</sub> | 
| <sub>**`appServicePlan`**</sub> | <sub>`plan`</sub> | <sub>`plan-myapp-dev-weu`</sub> | <sub>`plan-myapp-dev-weu-lllc`</sub> | 
| <sub>**`applicationGateway`**</sub> | <sub>`agw`</sub> | <sub>`agw-myapp-dev-weu`</sub> | <sub>`agw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`applicationInsights`**</sub> | <sub>`appi`</sub> | <sub>`appi-myapp-dev-weu`</sub> | <sub>`appi-myapp-dev-weu-lllc`</sub> | 
| <sub>**`applicationSecurityGroup`**</sub> | <sub>`asg`</sub> | <sub>`asg-myapp-dev-weu`</sub> | <sub>`asg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`automationAccount`**</sub> | <sub>`aa`</sub> | <sub>`aa-myapp-dev-weu`</sub> | <sub>`aa-myapp-dev-weu-lllc`</sub> | 
| <sub>**`automationCertificate`**</sub> | <sub>`aacert`</sub> | <sub>`aacert-myapp-dev-weu`</sub> | <sub>`aacert-myapp-dev-weu-lllc`</sub> | 
| <sub>**`automationCredential`**</sub> | <sub>`aacred`</sub> | <sub>`aacred-myapp-dev-weu`</sub> | <sub>`aacred-myapp-dev-weu-lllc`</sub> | 
| <sub>**`automationRunbook`**</sub> | <sub>`aacred`</sub> | <sub>`aacred-myapp-dev-weu`</sub> | <sub>`aacred-myapp-dev-weu-lllc`</sub> | 
| <sub>**`automationSchedule`**</sub> | <sub>`aasched`</sub> | <sub>`aasched-myapp-dev-weu`</sub> | <sub>`aasched-myapp-dev-weu-lllc`</sub> | 
| <sub>**`automationVariable`**</sub> | <sub>`aavar`</sub> | <sub>`aavar-myapp-dev-weu`</sub> | <sub>`aavar-myapp-dev-weu-lllc`</sub> | 
| <sub>**`availabilitySet`**</sub> | <sub>`avail`</sub> | <sub>`avail-myapp-dev-weu`</sub> | <sub>`avail-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-b"></a>B
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`bastionHost`**</sub> | <sub>`bas`</sub> | <sub>`bas-myapp-dev-weu`</sub> | <sub>`bas-myapp-dev-weu-lllc`</sub> | 
| <sub>**`batchAccount`**</sub> | <sub>`ba`</sub> | <sub>`bamyappdevweu`</sub> | <sub>`bamyappdevweulllc`</sub> | 
| <sub>**`batchApplication`**</sub> | <sub>`baapp`</sub> | <sub>`baapp-myapp-dev-weu`</sub> | <sub>`baapp-myapp-dev-weu-lllc`</sub> | 
| <sub>**`batchCertificate`**</sub> | <sub>`bacert`</sub> | <sub>`bacert-myapp-dev-weu`</sub> | <sub>`bacert-myapp-dev-weu-lllc`</sub> | 
| <sub>**`batchPool`**</sub> | <sub>`bapool`</sub> | <sub>`bapool-myapp-dev-weu`</sub> | <sub>`bapool-myapp-dev-weu-lll`</sub> | 
| <sub>**`botChannelDirectline`**</sub> | <sub>`botline`</sub> | <sub>`botline-myapp-dev-weu`</sub> | <sub>`botline-myapp-dev-weu-lllc`</sub> | 
| <sub>**`botChannelEmail`**</sub> | <sub>`botmail`</sub> | <sub>`botmail-myapp-dev-weu`</sub> | <sub>`botmail-myapp-dev-weu-lllc`</sub> | 
| <sub>**`botChannelMsTeams`**</sub> | <sub>`botteams`</sub> | <sub>`botteams-myapp-dev-weu`</sub> | <sub>`botteams-myapp-dev-weu-lllc`</sub> | 
| <sub>**`botChannelSlack`**</sub> | <sub>`botslack`</sub> | <sub>`botslack-myapp-dev-weu`</sub> | <sub>`botslack-myapp-dev-weu-lllc`</sub> | 
| <sub>**`botChannelsRegistration`**</sub> | <sub>`botchan`</sub> | <sub>`botchan-myapp-dev-weu`</sub> | <sub>`botchan-myapp-dev-weu-lllc`</sub> | 
| <sub>**`botConnection`**</sub> | <sub>`botcon`</sub> | <sub>`botcon-myapp-dev-weu`</sub> | <sub>`botcon-myapp-dev-weu-lllc`</sub> | 
| <sub>**`botWebApp`**</sub> | <sub>`bot`</sub> | <sub>`bot-myapp-dev-weu`</sub> | <sub>`bot-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-c"></a>C
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`cdnEndpoint`**</sub> | <sub>`cdn`</sub> | <sub>`cdn-myapp-dev-weu`</sub> | <sub>`cdn-myapp-dev-weu-lllc`</sub> | 
| <sub>**`cdnProfile`**</sub> | <sub>`cdnprof`</sub> | <sub>`cdnprof-myapp-dev-weu`</sub> | <sub>`cdnprof-myapp-dev-weu-lllc`</sub> | 
| <sub>**`chaosExperiment`**</sub> | <sub>`chaosexp`</sub> | <sub>`chaosexp-myapp-dev-weu`</sub> | <sub>`chaosexp-myapp-dev-weu-lllc`</sub> | 
| <sub>**`chaosTarget`**</sub> | <sub>`chaostarget`</sub> | <sub>`chaostarget-myapp-dev-weu`</sub> | <sub>`chaostarget-myapp-dev-weu-lllc`</sub> | 
| <sub>**`cognitiveAccount`**</sub> | <sub>`cog`</sub> | <sub>`cog-myapp-dev-weu`</sub> | <sub>`cog-myapp-dev-weu-lllc`</sub> | 
| <sub>**`containerApps`**</sub> | <sub>`ca`</sub> | <sub>`ca-myapp-dev-weu`</sub> | <sub>`ca-myapp-dev-weu-lllc`</sub> | 
| <sub>**`containerAppsEnvironment`**</sub> | <sub>`cae`</sub> | <sub>`cae-myapp-dev-weu`</sub> | <sub>`cae-myapp-dev-weu-lllc`</sub> | 
| <sub>**`containerGroup`**</sub> | <sub>`cg`</sub> | <sub>`cg-myapp-dev-weu`</sub> | <sub>`cg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`containerRegistry`**</sub> | <sub>`acr`</sub> | <sub>`acrmyappdevweu`</sub> | <sub>`acrmyappdevweulllc`</sub> | 
| <sub>**`containerRegistryWebhook`**</sub> | <sub>`crwh`</sub> | <sub>`crwhmyappdevweu`</sub> | <sub>`crwhmyappdevweulllc`</sub> | 
| <sub>**`cosmosdbAccount`**</sub> | <sub>`cosmos`</sub> | <sub>`cosmos-myapp-dev-weu`</sub> | <sub>`cosmos-myapp-dev-weu-lllc`</sub> | 
| <sub>**`customProvider`**</sub> | <sub>`prov`</sub> | <sub>`prov-myapp-dev-weu`</sub> | <sub>`prov-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-d"></a>D
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`dashboard`**</sub> | <sub>`dsb`</sub> | <sub>`dsb-myapp-dev-weu`</sub> | <sub>`dsb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactory`**</sub> | <sub>`adf`</sub> | <sub>`adf-myapp-dev-weu`</sub> | <sub>`adf-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryDatasetMysql`**</sub> | <sub>`adfmysql`</sub> | <sub>`adfmysql-myapp-dev-weu`</sub> | <sub>`adfmysql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryDatasetPostgresql`**</sub> | <sub>`adfpsql`</sub> | <sub>`adfpsql-myapp-dev-weu`</sub> | <sub>`adfpsql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryDatasetSqlServerTable`**</sub> | <sub>`adfmssql`</sub> | <sub>`adfmssql-myapp-dev-weu`</sub> | <sub>`adfmssql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryIntegrationRuntimeManaged`**</sub> | <sub>`adfir`</sub> | <sub>`adfir-myapp-dev-weu`</sub> | <sub>`adfir-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryLinkedServiceDataLakeStorageGen2`**</sub> | <sub>`adfsvst`</sub> | <sub>`adfsvst-myapp-dev-weu`</sub> | <sub>`adfsvst-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryLinkedServiceKeyVault`**</sub> | <sub>`adfsvkv`</sub> | <sub>`adfsvkv-myapp-dev-weu`</sub> | <sub>`adfsvkv-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryLinkedServiceMysql`**</sub> | <sub>`adfsvmysql`</sub> | <sub>`adfsvmysql-myapp-dev-weu`</sub> | <sub>`adfsvmysql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryLinkedServicePostgresql`**</sub> | <sub>`adfsvpsql`</sub> | <sub>`adfsvpsql-myapp-dev-weu`</sub> | <sub>`adfsvpsql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryLinkedServiceSqlServer`**</sub> | <sub>`adfsvmssql`</sub> | <sub>`adfsvmssql-myapp-dev-weu`</sub> | <sub>`adfsvmssql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryPipeline`**</sub> | <sub>`adfpl`</sub> | <sub>`adfpl-myapp-dev-weu`</sub> | <sub>`adfpl-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataFactoryTriggerSchedule`**</sub> | <sub>`adftg`</sub> | <sub>`adftg-myapp-dev-weu`</sub> | <sub>`adftg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataLakeAnalyticsAccount`**</sub> | <sub>`dla`</sub> | <sub>`dlamyappdevweu`</sub> | <sub>`dlamyappdevweulllc`</sub> | 
| <sub>**`dataLakeAnalyticsFirewallRule`**</sub> | <sub>`dlfw`</sub> | <sub>`dlfw-myapp-dev-weu`</sub> | <sub>`dlfw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dataLakeStore`**</sub> | <sub>`dls`</sub> | <sub>`dlsmyappdevweu`</sub> | <sub>`dlsmyappdevweulllc`</sub> | 
| <sub>**`dataLakeStoreFirewallRule`**</sub> | <sub>`dlsfw`</sub> | <sub>`dlsfw-myapp-dev-weu`</sub> | <sub>`dlsfw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`databaseMigrationProject`**</sub> | <sub>`migr`</sub> | <sub>`migr-myapp-dev-weu`</sub> | <sub>`migr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`databaseMigrationService`**</sub> | <sub>`dms`</sub> | <sub>`dms-myapp-dev-weu`</sub> | <sub>`dms-myapp-dev-weu-lllc`</sub> | 
| <sub>**`databricksWorkspace`**</sub> | <sub>`dbw`</sub> | <sub>`dbw-myapp-dev-weu`</sub> | <sub>`dbw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`devTestLab`**</sub> | <sub>`lab`</sub> | <sub>`lab-myapp-dev-weu`</sub> | <sub>`lab-myapp-dev-weu-lllc`</sub> | 
| <sub>**`devTestLinuxVirtualMachine`**</sub> | <sub>`labvm`</sub> | <sub>`labvm-myapp-dev-weu`</sub> | <sub>`labvm-myapp-dev-weu-lllc`</sub> | 
| <sub>**`devTestWindowsVirtualMachine`**</sub> | <sub>`labvm`</sub> | <sub>`labvm-myapp-dev`</sub> | <sub>`labvm-myapp-dev`</sub> | 
| <sub>**`diskEncryptionSet`**</sub> | <sub>`des`</sub> | <sub>`des-myapp-dev-weu`</sub> | <sub>`des-myapp-dev-weu-lllc`</sub> | 
| <sub>**`dnsZone`**</sub> | <sub>`dns`</sub> | <sub>`dns-myapp-dev-weu`</sub> | <sub>`dns-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-e"></a>E
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`eventGridDomain`**</sub> | <sub>`egd`</sub> | <sub>`egd-myapp-dev-weu`</sub> | <sub>`egd-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventGridDomainTopic`**</sub> | <sub>`egdt`</sub> | <sub>`egdt-myapp-dev-weu`</sub> | <sub>`egdt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventGridEventSubscription`**</sub> | <sub>`egs`</sub> | <sub>`egs-myapp-dev-weu`</sub> | <sub>`egs-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventGridTopic`**</sub> | <sub>`egt`</sub> | <sub>`egt-myapp-dev-weu`</sub> | <sub>`egt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventHub`**</sub> | <sub>`evh`</sub> | <sub>`evh-myapp-dev-weu`</sub> | <sub>`evh-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventHubAuthorizationRule`**</sub> | <sub>`ehar`</sub> | <sub>`ehar-myapp-dev-weu`</sub> | <sub>`ehar-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventHubConsumerGroup`**</sub> | <sub>`ehcg`</sub> | <sub>`ehcg-myapp-dev-weu`</sub> | <sub>`ehcg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventHubNamespace`**</sub> | <sub>`ehn`</sub> | <sub>`ehn-myapp-dev-weu`</sub> | <sub>`ehn-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventHubNamespaceAuthorizationRule`**</sub> | <sub>`ehnar`</sub> | <sub>`ehnar-myapp-dev-weu`</sub> | <sub>`ehnar-myapp-dev-weu-lllc`</sub> | 
| <sub>**`eventHubNamespaceDisasterRecoveryConfig`**</sub> | <sub>`ehdr`</sub> | <sub>`ehdr-myapp-dev-weu`</sub> | <sub>`ehdr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`expressRouteCircuit`**</sub> | <sub>`erc`</sub> | <sub>`erc-myapp-dev-weu`</sub> | <sub>`erc-myapp-dev-weu-lllc`</sub> | 
| <sub>**`expressRouteGateway`**</sub> | <sub>`ergw`</sub> | <sub>`ergw-myapp-dev-weu`</sub> | <sub>`ergw-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-f"></a>F
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`firewall`**</sub> | <sub>`afw`</sub> | <sub>`afw-myapp-dev-weu`</sub> | <sub>`afw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`firewallPolicy`**</sub> | <sub>`afwp`</sub> | <sub>`afwp-myapp-dev-weu`</sub> | <sub>`afwp-myapp-dev-weu-lllc`</sub> | 
| <sub>**`frontDoor`**</sub> | <sub>`fd`</sub> | <sub>`fd-myapp-dev-weu`</sub> | <sub>`fd-myapp-dev-weu-lllc`</sub> | 
| <sub>**`frontDoorFirewallPolicy`**</sub> | <sub>`fdfw`</sub> | <sub>`fdfw-myapp-dev-weu`</sub> | <sub>`fdfw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`functionApp`**</sub> | <sub>`func`</sub> | <sub>`func-myapp-dev-weu`</sub> | <sub>`func-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-g"></a>G
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`grafana`**</sub> | <sub>`grfn`</sub> | <sub>`grfn-myapp-dev-weu`</sub> | <sub>`grfn-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-h"></a>H
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`hdInsightHadoopCluster`**</sub> | <sub>`hadoop`</sub> | <sub>`hadoop-myapp-dev-weu`</sub> | <sub>`hadoop-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightHbaseCluster`**</sub> | <sub>`hbase`</sub> | <sub>`hbase-myapp-dev-weu`</sub> | <sub>`hbase-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightInteractiveQueryCluster`**</sub> | <sub>`iqr`</sub> | <sub>`iqr-myapp-dev-weu`</sub> | <sub>`iqr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightKafkaCluster`**</sub> | <sub>`kafka`</sub> | <sub>`kafka-myapp-dev-weu`</sub> | <sub>`kafka-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightMlServicesCluster`**</sub> | <sub>`mls`</sub> | <sub>`mls-myapp-dev-weu`</sub> | <sub>`mls-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightRserverCluster`**</sub> | <sub>`rsv`</sub> | <sub>`rsv-myapp-dev-weu`</sub> | <sub>`rsv-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightSparkCluster`**</sub> | <sub>`spark`</sub> | <sub>`spark-myapp-dev-weu`</sub> | <sub>`spark-myapp-dev-weu-lllc`</sub> | 
| <sub>**`hdInsightStormCluster`**</sub> | <sub>`storm`</sub> | <sub>`storm-myapp-dev-weu`</sub> | <sub>`storm-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-i"></a>I
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`image`**</sub> | <sub>`img`</sub> | <sub>`img-myapp-dev-weu`</sub> | <sub>`img-myapp-dev-weu-lllc`</sub> | 
| <sub>**`iotCentralApplication`**</sub> | <sub>`iotapp`</sub> | <sub>`iotapp-myapp-dev-weu`</sub> | <sub>`iotapp-myapp-dev-weu-lllc`</sub> | 
| <sub>**`iotHub`**</sub> | <sub>`iot`</sub> | <sub>`iot-myapp-dev-weu`</sub> | <sub>`iot-myapp-dev-weu-lllc`</sub> | 
| <sub>**`iotHubConsumerGroup`**</sub> | <sub>`iotcg`</sub> | <sub>`iotcg-myapp-dev-weu`</sub> | <sub>`iotcg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`iotHubDps`**</sub> | <sub>`dps`</sub> | <sub>`dps-myapp-dev-weu`</sub> | <sub>`dps-myapp-dev-weu-lllc`</sub> | 
| <sub>**`iotHubDpsCertificate`**</sub> | <sub>`dpscert`</sub> | <sub>`dpscert-myapp-dev-weu`</sub> | <sub>`dpscert-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-k"></a>K
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`keyVault`**</sub> | <sub>`kv`</sub> | <sub>`kv-myapp-dev-weu`</sub> | <sub>`kv-myapp-dev-weu-lllc`</sub> | 
| <sub>**`keyVaultCertificate`**</sub> | <sub>`kvc`</sub> | <sub>`kvc-myapp-dev-weu`</sub> | <sub>`kvc-myapp-dev-weu-lllc`</sub> | 
| <sub>**`keyVaultKey`**</sub> | <sub>`kvk`</sub> | <sub>`kvk-myapp-dev-weu`</sub> | <sub>`kvk-myapp-dev-weu-lllc`</sub> | 
| <sub>**`keyVaultSecret`**</sub> | <sub>`kvs`</sub> | <sub>`kvs-myapp-dev-weu`</sub> | <sub>`kvs-myapp-dev-weu-lllc`</sub> | 
| <sub>**`kubernetesCluster`**</sub> | <sub>`aks`</sub> | <sub>`aks-myapp-dev-weu`</sub> | <sub>`aks-myapp-dev-weu-lllc`</sub> | 
| <sub>**`kustoCluster`**</sub> | <sub>`kc`</sub> | <sub>`kcmyappdevweu`</sub> | <sub>`kcmyappdevweulllc`</sub> | 
| <sub>**`kustoDatabase`**</sub> | <sub>`kdb`</sub> | <sub>`kdb-myapp-dev-weu`</sub> | <sub>`kdb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`kustoEventHubDataConnection`**</sub> | <sub>`kehc`</sub> | <sub>`kehc-myapp-dev-weu`</sub> | <sub>`kehc-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-l"></a>L
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`linuxVirtualMachine`**</sub> | <sub>`vm`</sub> | <sub>`vm-myapp-dev-weu`</sub> | <sub>`vm-myapp-dev-weu-lllc`</sub> | 
| <sub>**`linuxVirtualMachineScaleSet`**</sub> | <sub>`vmss`</sub> | <sub>`vmss-myapp-dev-weu`</sub> | <sub>`vmss-myapp-dev-weu-lllc`</sub> | 
| <sub>**`loadBalancer`**</sub> | <sub>`lb`</sub> | <sub>`lb-myapp-dev-weu`</sub> | <sub>`lb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`loadBalancerNatRule`**</sub> | <sub>`lbnatrl`</sub> | <sub>`lbnatrl-myapp-dev-weu`</sub> | <sub>`lbnatrl-myapp-dev-weu-lllc`</sub> | 
| <sub>**`loadTesting`**</sub> | <sub>`lt`</sub> | <sub>`lt-myapp-dev-weu`</sub> | <sub>`lt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`localNetworkGateway`**</sub> | <sub>`lgw`</sub> | <sub>`lgw-myapp-dev-weu`</sub> | <sub>`lgw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`logAnalyticsWorkspace`**</sub> | <sub>`log`</sub> | <sub>`log-myapp-dev-weu`</sub> | <sub>`log-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-m"></a>M
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`machineLearningWorkspace`**</sub> | <sub>`mlw`</sub> | <sub>`mlw-myapp-dev-weu`</sub> | <sub>`mlw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`managedDisk`**</sub> | <sub>`dsk`</sub> | <sub>`dsk-myapp-dev-weu`</sub> | <sub>`dsk-myapp-dev-weu-lllc`</sub> | 
| <sub>**`managedIdentity`**</sub> | <sub>`id`</sub> | <sub>`id-myapp-dev-weu`</sub> | <sub>`id-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mapsAccount`**</sub> | <sub>`map`</sub> | <sub>`map-myapp-dev-weu`</sub> | <sub>`map-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mariadbDatabase`**</sub> | <sub>`mariadb`</sub> | <sub>`mariadb-myapp-dev-weu`</sub> | <sub>`mariadb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mariadbFirewallRule`**</sub> | <sub>`mariafw`</sub> | <sub>`mariafw-myapp-dev-weu`</sub> | <sub>`mariafw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mariadbServer`**</sub> | <sub>`maria`</sub> | <sub>`maria-myapp-dev-weu`</sub> | <sub>`maria-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mariadbVirtualNetworkRule`**</sub> | <sub>`mariavn`</sub> | <sub>`mariavn-myapp-dev-weu`</sub> | <sub>`mariavn-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mssqlDatabase`**</sub> | <sub>`sqldb`</sub> | <sub>`sqldb-myapp-dev-weu`</sub> | <sub>`sqldb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mssqlElasticpool`**</sub> | <sub>`sqlep`</sub> | <sub>`sqlep-myapp-dev-weu`</sub> | <sub>`sqlep-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mssqlServer`**</sub> | <sub>`sql`</sub> | <sub>`sql-myapp-dev-weu`</sub> | <sub>`sql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mysqlDatabase`**</sub> | <sub>`mysqldb`</sub> | <sub>`mysqldb-myapp-dev-weu`</sub> | <sub>`mysqldb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mysqlFirewallRule`**</sub> | <sub>`mysqlfw`</sub> | <sub>`mysqlfw-myapp-dev-weu`</sub> | <sub>`mysqlfw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mysqlServer`**</sub> | <sub>`mysql`</sub> | <sub>`mysql-myapp-dev-weu`</sub> | <sub>`mysql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`mysqlVirtualNetworkRule`**</sub> | <sub>`mysqlvn`</sub> | <sub>`mysqlvn-myapp-dev-weu`</sub> | <sub>`mysqlvn-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-n"></a>N
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`networkInterface`**</sub> | <sub>`nic`</sub> | <sub>`nic-myapp-dev-weu`</sub> | <sub>`nic-myapp-dev-weu-lllc`</sub> | 
| <sub>**`networkSecurityGroup`**</sub> | <sub>`nsg`</sub> | <sub>`nsg-myapp-dev-weu`</sub> | <sub>`nsg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`networkSecurityGroupRule`**</sub> | <sub>`nsgr`</sub> | <sub>`nsgr-myapp-dev-weu`</sub> | <sub>`nsgr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`networkSecurityRule`**</sub> | <sub>`nsgr`</sub> | <sub>`nsgr-myapp-dev-weu`</sub> | <sub>`nsgr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`networkWatcher`**</sub> | <sub>`nw`</sub> | <sub>`nw-myapp-dev-weu`</sub> | <sub>`nw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`notificationHub`**</sub> | <sub>`nh`</sub> | <sub>`nh-myapp-dev-weu`</sub> | <sub>`nh-myapp-dev-weu-lllc`</sub> | 
| <sub>**`notificationHubAuthorizationRule`**</sub> | <sub>`dnsrec`</sub> | <sub>`dnsrec-myapp-dev-weu`</sub> | <sub>`dnsrec-myapp-dev-weu-lllc`</sub> | 
| <sub>**`notificationHubNamespace`**</sub> | <sub>`dnsrec`</sub> | <sub>`dnsrec-myapp-dev-weu`</sub> | <sub>`dnsrec-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-p"></a>P
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`pointToSiteVpnGateway`**</sub> | <sub>`vpngw`</sub> | <sub>`vpngw-myapp-dev-weu`</sub> | <sub>`vpngw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`postgresqlDatabase`**</sub> | <sub>`psqldb`</sub> | <sub>`psqldb-myapp-dev-weu`</sub> | <sub>`psqldb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`postgresqlFirewallRule`**</sub> | <sub>`psqlfw`</sub> | <sub>`psqlfw-myapp-dev-weu`</sub> | <sub>`psqlfw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`postgresqlServer`**</sub> | <sub>`psql`</sub> | <sub>`psql-myapp-dev-weu`</sub> | <sub>`psql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`postgresqlVirtualNetworkRule`**</sub> | <sub>`psqlvn`</sub> | <sub>`psqlvn-myapp-dev-weu`</sub> | <sub>`psqlvn-myapp-dev-weu-lllc`</sub> | 
| <sub>**`powerbiEmbedded`**</sub> | <sub>`pbi`</sub> | <sub>`pbi-myapp-dev-weu`</sub> | <sub>`pbi-myapp-dev-weu-lllc`</sub> | 
| <sub>**`privateDnsZone`**</sub> | <sub>`pdns`</sub> | <sub>`pdns-myapp-dev-weu`</sub> | <sub>`pdns-myapp-dev-weu-lllc`</sub> | 
| <sub>**`publicIp`**</sub> | <sub>`pip`</sub> | <sub>`pip-myapp-dev-weu`</sub> | <sub>`pip-myapp-dev-weu-lllc`</sub> | 
| <sub>**`publicIpPrefix`**</sub> | <sub>`pippf`</sub> | <sub>`pippf-myapp-dev-weu`</sub> | <sub>`pippf-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-r"></a>R
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`redisCache`**</sub> | <sub>`redis`</sub> | <sub>`redis-myapp-dev-weu`</sub> | <sub>`redis-myapp-dev-weu-lllc`</sub> | 
| <sub>**`redisFirewallRule`**</sub> | <sub>`redisfw`</sub> | <sub>`redisfwmyappdevweu`</sub> | <sub>`redisfwmyappdevweulllc`</sub> | 
| <sub>**`relayHybridConnection`**</sub> | <sub>`rlhc`</sub> | <sub>`rlhc-myapp-dev-weu`</sub> | <sub>`rlhc-myapp-dev-weu-lllc`</sub> | 
| <sub>**`relayNamespace`**</sub> | <sub>`rln`</sub> | <sub>`rln-myapp-dev-weu`</sub> | <sub>`rln-myapp-dev-weu-lllc`</sub> | 
| <sub>**`resourceGroup`**</sub> | <sub>`rg`</sub> | <sub>`rg-myapp-dev-weu`</sub> | <sub>`rg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`roleAssignment`**</sub> | <sub>`ra`</sub> | <sub>`ra-myapp-dev-weu`</sub> | <sub>`ra-myapp-dev-weu-lllc`</sub> | 
| <sub>**`roleDefinition`**</sub> | <sub>`rd`</sub> | <sub>`rd-myapp-dev-weu`</sub> | <sub>`rd-myapp-dev-weu-lllc`</sub> | 
| <sub>**`route`**</sub> | <sub>`rt`</sub> | <sub>`rt-myapp-dev-weu`</sub> | <sub>`rt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`routeTable`**</sub> | <sub>`route`</sub> | <sub>`route-myapp-dev-weu`</sub> | <sub>`route-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-s"></a>S
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`serviceBusNamespace`**</sub> | <sub>`sb`</sub> | <sub>`sb-myapp-dev-weu`</sub> | <sub>`sb-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusNamespaceAuthorizationRule`**</sub> | <sub>`sbar`</sub> | <sub>`sbar-myapp-dev-weu`</sub> | <sub>`sbar-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusQueue`**</sub> | <sub>`sbq`</sub> | <sub>`sbq-myapp-dev-weu`</sub> | <sub>`sbq-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusQueueAuthorizationRule`**</sub> | <sub>`sbqar`</sub> | <sub>`sbqar-myapp-dev-weu`</sub> | <sub>`sbqar-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusSubscription`**</sub> | <sub>`sbs`</sub> | <sub>`sbs-myapp-dev-weu`</sub> | <sub>`sbs-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusSubscriptionRule`**</sub> | <sub>`sbsr`</sub> | <sub>`sbsr-myapp-dev-weu`</sub> | <sub>`sbsr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusTopic`**</sub> | <sub>`sbt`</sub> | <sub>`sbt-myapp-dev-weu`</sub> | <sub>`sbt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceBusTopicAuthorizationRule`**</sub> | <sub>`dnsrec`</sub> | <sub>`dnsrec-myapp-dev-weu`</sub> | <sub>`dnsrec-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceFabricCluster`**</sub> | <sub>`sf`</sub> | <sub>`sf-myapp-dev-weu`</sub> | <sub>`sf-myapp-dev-weu-lllc`</sub> | 
| <sub>**`serviceFabricManagedCluster`**</sub> | <sub>`sfmc`</sub> | <sub>`sfmc-myapp-dev-weu`</sub> | <sub>`sfmc-myapp-dev-weu-lllc`</sub> | 
| <sub>**`sharedImage`**</sub> | <sub>`si`</sub> | <sub>`si-myapp-dev-weu`</sub> | <sub>`si-myapp-dev-weu-lllc`</sub> | 
| <sub>**`sharedImageGallery`**</sub> | <sub>`sig`</sub> | <sub>`sigmyappdevweu`</sub> | <sub>`sigmyappdevweulllc`</sub> | 
| <sub>**`signalrService`**</sub> | <sub>`sgnlr`</sub> | <sub>`sgnlr-myapp-dev-weu`</sub> | <sub>`sgnlr-myapp-dev-weu-lllc`</sub> | 
| <sub>**`snapshots`**</sub> | <sub>`snap`</sub> | <sub>`snap-myapp-dev-weu`</sub> | <sub>`snap-myapp-dev-weu-lllc`</sub> | 
| <sub>**`sqlElasticpool`**</sub> | <sub>`sqlep`</sub> | <sub>`sqlep-myapp-dev-weu`</sub> | <sub>`sqlep-myapp-dev-weu-lllc`</sub> | 
| <sub>**`sqlFailoverGroup`**</sub> | <sub>`sqlfg`</sub> | <sub>`sqlfg-myapp-dev-weu`</sub> | <sub>`sqlfg-myapp-dev-weu-lllc`</sub> | 
| <sub>**`sqlFirewallRule`**</sub> | <sub>`sqlfw`</sub> | <sub>`sqlfw-myapp-dev-weu`</sub> | <sub>`sqlfw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`sqlServer`**</sub> | <sub>`sql`</sub> | <sub>`sql-myapp-dev-weu`</sub> | <sub>`sql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageAccount`**</sub> | <sub>`st`</sub> | <sub>`stmyappdevweu`</sub> | <sub>`stmyappdevweulllc`</sub> | 
| <sub>**`storageBlob`**</sub> | <sub>`blob`</sub> | <sub>`blob-myapp-dev-weu`</sub> | <sub>`blob-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageContainer`**</sub> | <sub>`stct`</sub> | <sub>`stct-myapp-dev-weu`</sub> | <sub>`stct-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageDataLakeGen2Filesystem`**</sub> | <sub>`stdl`</sub> | <sub>`stdl-myapp-dev-weu`</sub> | <sub>`stdl-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageQueue`**</sub> | <sub>`stq`</sub> | <sub>`stq-myapp-dev-weu`</sub> | <sub>`stq-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageShare`**</sub> | <sub>`sts`</sub> | <sub>`sts-myapp-dev-weu`</sub> | <sub>`sts-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageShareDirectory`**</sub> | <sub>`sts`</sub> | <sub>`sts-myapp-dev-weu`</sub> | <sub>`sts-myapp-dev-weu-lllc`</sub> | 
| <sub>**`storageTable`**</sub> | <sub>`stt`</sub> | <sub>`stt-myapp-dev-weu`</sub> | <sub>`stt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsFunctionJavascriptUdf`**</sub> | <sub>`asafunc`</sub> | <sub>`asafunc-myapp-dev-weu`</sub> | <sub>`asafunc-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsJob`**</sub> | <sub>`asa`</sub> | <sub>`asa-myapp-dev-weu`</sub> | <sub>`asa-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsOutputBlob`**</sub> | <sub>`asaoblob`</sub> | <sub>`asaoblob-myapp-dev-weu`</sub> | <sub>`asaoblob-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsOutputEventHub`**</sub> | <sub>`asaoeh`</sub> | <sub>`asaoeh-myapp-dev-weu`</sub> | <sub>`asaoeh-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsOutputMssql`**</sub> | <sub>`asaomssql`</sub> | <sub>`asaomssql-myapp-dev-weu`</sub> | <sub>`asaomssql-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsOutputServiceBusQueue`**</sub> | <sub>`asaosbq`</sub> | <sub>`asaosbq-myapp-dev-weu`</sub> | <sub>`asaosbq-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsOutputServiceBusTopic`**</sub> | <sub>`asaosbt`</sub> | <sub>`asaosbt-myapp-dev-weu`</sub> | <sub>`asaosbt-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsReferenceInputBlob`**</sub> | <sub>`asarblob`</sub> | <sub>`asarblob-myapp-dev-weu`</sub> | <sub>`asarblob-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsStreamInputBlob`**</sub> | <sub>`asaiblob`</sub> | <sub>`asaiblob-myapp-dev-weu`</sub> | <sub>`asaiblob-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsStreamInputEventHub`**</sub> | <sub>`asaieh`</sub> | <sub>`asaieh-myapp-dev-weu`</sub> | <sub>`asaieh-myapp-dev-weu-lllc`</sub> | 
| <sub>**`streamAnalyticsStreamInputIotHub`**</sub> | <sub>`asaiiot`</sub> | <sub>`asaiiot-myapp-dev-weu`</sub> | <sub>`asaiiot-myapp-dev-weu-lllc`</sub> | 
| <sub>**`subnet`**</sub> | <sub>`snet`</sub> | <sub>`snet-myapp-dev-weu`</sub> | <sub>`snet-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-t"></a>T
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`templateDeployment`**</sub> | <sub>`deploy`</sub> | <sub>`deploy-myapp-dev-weu`</sub> | <sub>`deploy-myapp-dev-weu-lllc`</sub> | 
| <sub>**`trafficManagerProfile`**</sub> | <sub>`traf`</sub> | <sub>`traf-myapp-dev-weu`</sub> | <sub>`traf-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-v"></a>V
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`virtualMachine`**</sub> | <sub>`vm`</sub> | <sub>`vm-myapp-dev-we`</sub> | <sub>`vm-myapp-dev-we`</sub> | 
| <sub>**`virtualMachineScaleSet`**</sub> | <sub>`vmss`</sub> | <sub>`vmss-myapp-dev`</sub> | <sub>`vmss-myapp-dev`</sub> | 
| <sub>**`virtualNetwork`**</sub> | <sub>`vnet`</sub> | <sub>`vnet-myapp-dev-weu`</sub> | <sub>`vnet-myapp-dev-weu-lllc`</sub> | 
| <sub>**`virtualNetworkGateway`**</sub> | <sub>`vgw`</sub> | <sub>`vgw-myapp-dev-weu`</sub> | <sub>`vgw-myapp-dev-weu-lllc`</sub> | 
| <sub>**`virtualNetworkPeering`**</sub> | <sub>`vpeer`</sub> | <sub>`vpeer-myapp-dev-weu`</sub> | <sub>`vpeer-myapp-dev-weu-lllc`</sub> | 
| <sub>**`virtualWan`**</sub> | <sub>`vwan`</sub> | <sub>`vwan-myapp-dev-weu`</sub> | <sub>`vwan-myapp-dev-weu-lllc`</sub> | 
[Go to top](#reference)

## <a name="ref-w"></a>W
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`windowsVirtualMachine`**</sub> | <sub>`vm`</sub> | <sub>`vm-myapp-dev-we`</sub> | <sub>`vm-myapp-dev-we`</sub> | 
| <sub>**`windowsVirtualMachineScaleSet`**</sub> | <sub>`vmss`</sub> | <sub>`vmss-myapp-dev`</sub> | <sub>`vmss-myapp-dev`</sub> | 
[Go to top](#reference)


## License

Azure naming for Bicep/ARM is licensed under the [MIT](LICENSE) license.