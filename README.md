<!-- NOTE: This is a generated file, do not update directly. -->
<!-- Generated on: 2022-05-20T06:19:42.699Z. -->
# Bicep Azure Naming module

[![bicep-CI](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml/badge.svg)](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml)

Bicep and ARM template module for keeping a consistent Azure resources naming convention, as well as respecting the rules for each resource name (max length, whether dashes are allowed etc). Inspired and based on the nice [Terraform module/implementation](https://github.com/Azure/terraform-azurerm-naming). 

## How to use / Getting started

A template sample repository was created to showcase how to use this module (**https://github.com/nianton/bicep-starter**), and you will also find an example in the **`/examples`** folder, with the **`example.sub.bicep`** demonstrating how to use this module to facilitate naming resources on Azure.

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

### Index: [A](#ref-a) - [B](#ref-b) - [C](#ref-c) - [D](#ref-d) - [E](#ref-e) - [F](#ref-f) - [H](#ref-h) - [I](#ref-i) - [K](#ref-k) - [L](#ref-l) - [M](#ref-m) - [N](#ref-n) - [P](#ref-p) - [R](#ref-r) - [S](#ref-s) - [T](#ref-t) - [V](#ref-v) - [W](#ref-w)

## <a name="ref-a"></a>A
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`analysisServicesServer`**</sub> | <sub>`as`</sub> | <sub>`asmyappdevweu`</sub> | <sub>`asmyappdevweuhxse`</sub> | 
| <sub>**`apiManagement`**</sub> | <sub>`apim`</sub> | <sub>`apimmyappdevweu`</sub> | <sub>`apimmyappdevweuhxse`</sub> | 
| <sub>**`appConfiguration`**</sub> | <sub>`appcg`</sub> | <sub>`appcg-myapp-dev-weu`</sub> | <sub>`appcg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`appService`**</sub> | <sub>`app`</sub> | <sub>`app-myapp-dev-weu`</sub> | <sub>`app-myapp-dev-weu-hxse`</sub> | 
| <sub>**`appServiceEnvironment`**</sub> | <sub>`ase`</sub> | <sub>`ase-myapp-dev-weu`</sub> | <sub>`ase-myapp-dev-weu-hxse`</sub> | 
| <sub>**`appServicePlan`**</sub> | <sub>`plan`</sub> | <sub>`plan-myapp-dev-weu`</sub> | <sub>`plan-myapp-dev-weu-hxse`</sub> | 
| <sub>**`applicationGateway`**</sub> | <sub>`agw`</sub> | <sub>`agw-myapp-dev-weu`</sub> | <sub>`agw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`applicationInsights`**</sub> | <sub>`appi`</sub> | <sub>`appi-myapp-dev-weu`</sub> | <sub>`appi-myapp-dev-weu-hxse`</sub> | 
| <sub>**`applicationSecurityGroup`**</sub> | <sub>`asg`</sub> | <sub>`asg-myapp-dev-weu`</sub> | <sub>`asg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`automationAccount`**</sub> | <sub>`aa`</sub> | <sub>`aa-myapp-dev-weu`</sub> | <sub>`aa-myapp-dev-weu-hxse`</sub> | 
| <sub>**`automationCertificate`**</sub> | <sub>`aacert`</sub> | <sub>`aacert-myapp-dev-weu`</sub> | <sub>`aacert-myapp-dev-weu-hxse`</sub> | 
| <sub>**`automationCredential`**</sub> | <sub>`aacred`</sub> | <sub>`aacred-myapp-dev-weu`</sub> | <sub>`aacred-myapp-dev-weu-hxse`</sub> | 
| <sub>**`automationRunbook`**</sub> | <sub>`aacred`</sub> | <sub>`aacred-myapp-dev-weu`</sub> | <sub>`aacred-myapp-dev-weu-hxse`</sub> | 
| <sub>**`automationSchedule`**</sub> | <sub>`aasched`</sub> | <sub>`aasched-myapp-dev-weu`</sub> | <sub>`aasched-myapp-dev-weu-hxse`</sub> | 
| <sub>**`automationVariable`**</sub> | <sub>`aavar`</sub> | <sub>`aavar-myapp-dev-weu`</sub> | <sub>`aavar-myapp-dev-weu-hxse`</sub> | 
| <sub>**`availabilitySet`**</sub> | <sub>`avail`</sub> | <sub>`avail-myapp-dev-weu`</sub> | <sub>`avail-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-b"></a>B
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`bastionHost`**</sub> | <sub>`bas`</sub> | <sub>`bas-myapp-dev-weu`</sub> | <sub>`bas-myapp-dev-weu-hxse`</sub> | 
| <sub>**`batchAccount`**</sub> | <sub>`ba`</sub> | <sub>`bamyappdevweu`</sub> | <sub>`bamyappdevweuhxse`</sub> | 
| <sub>**`batchApplication`**</sub> | <sub>`baapp`</sub> | <sub>`baapp-myapp-dev-weu`</sub> | <sub>`baapp-myapp-dev-weu-hxse`</sub> | 
| <sub>**`batchCertificate`**</sub> | <sub>`bacert`</sub> | <sub>`bacert-myapp-dev-weu`</sub> | <sub>`bacert-myapp-dev-weu-hxse`</sub> | 
| <sub>**`batchPool`**</sub> | <sub>`bapool`</sub> | <sub>`bapool-myapp-dev-weu`</sub> | <sub>`bapool-myapp-dev-weu-hxs`</sub> | 
| <sub>**`botChannelDirectline`**</sub> | <sub>`botline`</sub> | <sub>`botline-myapp-dev-weu`</sub> | <sub>`botline-myapp-dev-weu-hxse`</sub> | 
| <sub>**`botChannelEmail`**</sub> | <sub>`botmail`</sub> | <sub>`botmail-myapp-dev-weu`</sub> | <sub>`botmail-myapp-dev-weu-hxse`</sub> | 
| <sub>**`botChannelMsTeams`**</sub> | <sub>`botteams`</sub> | <sub>`botteams-myapp-dev-weu`</sub> | <sub>`botteams-myapp-dev-weu-hxse`</sub> | 
| <sub>**`botChannelSlack`**</sub> | <sub>`botslack`</sub> | <sub>`botslack-myapp-dev-weu`</sub> | <sub>`botslack-myapp-dev-weu-hxse`</sub> | 
| <sub>**`botChannelsRegistration`**</sub> | <sub>`botchan`</sub> | <sub>`botchan-myapp-dev-weu`</sub> | <sub>`botchan-myapp-dev-weu-hxse`</sub> | 
| <sub>**`botConnection`**</sub> | <sub>`botcon`</sub> | <sub>`botcon-myapp-dev-weu`</sub> | <sub>`botcon-myapp-dev-weu-hxse`</sub> | 
| <sub>**`botWebApp`**</sub> | <sub>`bot`</sub> | <sub>`bot-myapp-dev-weu`</sub> | <sub>`bot-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-c"></a>C
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`cdnEndpoint`**</sub> | <sub>`cdn`</sub> | <sub>`cdn-myapp-dev-weu`</sub> | <sub>`cdn-myapp-dev-weu-hxse`</sub> | 
| <sub>**`cdnProfile`**</sub> | <sub>`cdnprof`</sub> | <sub>`cdnprof-myapp-dev-weu`</sub> | <sub>`cdnprof-myapp-dev-weu-hxse`</sub> | 
| <sub>**`cognitiveAccount`**</sub> | <sub>`cog`</sub> | <sub>`cog-myapp-dev-weu`</sub> | <sub>`cog-myapp-dev-weu-hxse`</sub> | 
| <sub>**`containerApp`**</sub> | <sub>`capp`</sub> | <sub>`capp-myapp-dev-weu`</sub> | <sub>`capp-myapp-dev-weu-hxse`</sub> | 
| <sub>**`containerGroup`**</sub> | <sub>`cg`</sub> | <sub>`cg-myapp-dev-weu`</sub> | <sub>`cg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`containerRegistry`**</sub> | <sub>`acr`</sub> | <sub>`acrmyappdevweu`</sub> | <sub>`acrmyappdevweuhxse`</sub> | 
| <sub>**`containerRegistryWebhook`**</sub> | <sub>`crwh`</sub> | <sub>`crwhmyappdevweu`</sub> | <sub>`crwhmyappdevweuhxse`</sub> | 
| <sub>**`cosmosdbAccount`**</sub> | <sub>`cosmos`</sub> | <sub>`cosmos-myapp-dev-weu`</sub> | <sub>`cosmos-myapp-dev-weu-hxse`</sub> | 
| <sub>**`customProvider`**</sub> | <sub>`prov`</sub> | <sub>`prov-myapp-dev-weu`</sub> | <sub>`prov-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-d"></a>D
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`dashboard`**</sub> | <sub>`dsb`</sub> | <sub>`dsb-myapp-dev-weu`</sub> | <sub>`dsb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactory`**</sub> | <sub>`adf`</sub> | <sub>`adf-myapp-dev-weu`</sub> | <sub>`adf-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryDatasetMysql`**</sub> | <sub>`adfmysql`</sub> | <sub>`adfmysql-myapp-dev-weu`</sub> | <sub>`adfmysql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryDatasetPostgresql`**</sub> | <sub>`adfpsql`</sub> | <sub>`adfpsql-myapp-dev-weu`</sub> | <sub>`adfpsql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryDatasetSqlServerTable`**</sub> | <sub>`adfmssql`</sub> | <sub>`adfmssql-myapp-dev-weu`</sub> | <sub>`adfmssql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryIntegrationRuntimeManaged`**</sub> | <sub>`adfir`</sub> | <sub>`adfir-myapp-dev-weu`</sub> | <sub>`adfir-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryLinkedServiceDataLakeStorageGen2`**</sub> | <sub>`adfsvst`</sub> | <sub>`adfsvst-myapp-dev-weu`</sub> | <sub>`adfsvst-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryLinkedServiceKeyVault`**</sub> | <sub>`adfsvkv`</sub> | <sub>`adfsvkv-myapp-dev-weu`</sub> | <sub>`adfsvkv-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryLinkedServiceMysql`**</sub> | <sub>`adfsvmysql`</sub> | <sub>`adfsvmysql-myapp-dev-weu`</sub> | <sub>`adfsvmysql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryLinkedServicePostgresql`**</sub> | <sub>`adfsvpsql`</sub> | <sub>`adfsvpsql-myapp-dev-weu`</sub> | <sub>`adfsvpsql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryLinkedServiceSqlServer`**</sub> | <sub>`adfsvmssql`</sub> | <sub>`adfsvmssql-myapp-dev-weu`</sub> | <sub>`adfsvmssql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryPipeline`**</sub> | <sub>`adfpl`</sub> | <sub>`adfpl-myapp-dev-weu`</sub> | <sub>`adfpl-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataFactoryTriggerSchedule`**</sub> | <sub>`adftg`</sub> | <sub>`adftg-myapp-dev-weu`</sub> | <sub>`adftg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataLakeAnalyticsAccount`**</sub> | <sub>`dla`</sub> | <sub>`dlamyappdevweu`</sub> | <sub>`dlamyappdevweuhxse`</sub> | 
| <sub>**`dataLakeAnalyticsFirewallRule`**</sub> | <sub>`dlfw`</sub> | <sub>`dlfw-myapp-dev-weu`</sub> | <sub>`dlfw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dataLakeStore`**</sub> | <sub>`dls`</sub> | <sub>`dlsmyappdevweu`</sub> | <sub>`dlsmyappdevweuhxse`</sub> | 
| <sub>**`dataLakeStoreFirewallRule`**</sub> | <sub>`dlsfw`</sub> | <sub>`dlsfw-myapp-dev-weu`</sub> | <sub>`dlsfw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`databaseMigrationProject`**</sub> | <sub>`migr`</sub> | <sub>`migr-myapp-dev-weu`</sub> | <sub>`migr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`databaseMigrationService`**</sub> | <sub>`dms`</sub> | <sub>`dms-myapp-dev-weu`</sub> | <sub>`dms-myapp-dev-weu-hxse`</sub> | 
| <sub>**`databricksWorkspace`**</sub> | <sub>`dbw`</sub> | <sub>`dbw-myapp-dev-weu`</sub> | <sub>`dbw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`devTestLab`**</sub> | <sub>`lab`</sub> | <sub>`lab-myapp-dev-weu`</sub> | <sub>`lab-myapp-dev-weu-hxse`</sub> | 
| <sub>**`devTestLinuxVirtualMachine`**</sub> | <sub>`labvm`</sub> | <sub>`labvm-myapp-dev-weu`</sub> | <sub>`labvm-myapp-dev-weu-hxse`</sub> | 
| <sub>**`devTestWindowsVirtualMachine`**</sub> | <sub>`labvm`</sub> | <sub>`labvm-myapp-dev`</sub> | <sub>`labvm-myapp-dev`</sub> | 
| <sub>**`diskEncryptionSet`**</sub> | <sub>`des`</sub> | <sub>`des-myapp-dev-weu`</sub> | <sub>`des-myapp-dev-weu-hxse`</sub> | 
| <sub>**`dnsZone`**</sub> | <sub>`dns`</sub> | <sub>`dns-myapp-dev-weu`</sub> | <sub>`dns-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-e"></a>E
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`eventGridDomain`**</sub> | <sub>`egd`</sub> | <sub>`egd-myapp-dev-weu`</sub> | <sub>`egd-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventGridDomainTopic`**</sub> | <sub>`egdt`</sub> | <sub>`egdt-myapp-dev-weu`</sub> | <sub>`egdt-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventGridEventSubscription`**</sub> | <sub>`egs`</sub> | <sub>`egs-myapp-dev-weu`</sub> | <sub>`egs-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventGridTopic`**</sub> | <sub>`egt`</sub> | <sub>`egt-myapp-dev-weu`</sub> | <sub>`egt-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventHub`**</sub> | <sub>`evh`</sub> | <sub>`evh-myapp-dev-weu`</sub> | <sub>`evh-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventHubAuthorizationRule`**</sub> | <sub>`ehar`</sub> | <sub>`ehar-myapp-dev-weu`</sub> | <sub>`ehar-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventHubConsumerGroup`**</sub> | <sub>`ehcg`</sub> | <sub>`ehcg-myapp-dev-weu`</sub> | <sub>`ehcg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventHubNamespace`**</sub> | <sub>`ehn`</sub> | <sub>`ehn-myapp-dev-weu`</sub> | <sub>`ehn-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventHubNamespaceAuthorizationRule`**</sub> | <sub>`ehnar`</sub> | <sub>`ehnar-myapp-dev-weu`</sub> | <sub>`ehnar-myapp-dev-weu-hxse`</sub> | 
| <sub>**`eventHubNamespaceDisasterRecoveryConfig`**</sub> | <sub>`ehdr`</sub> | <sub>`ehdr-myapp-dev-weu`</sub> | <sub>`ehdr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`expressRouteCircuit`**</sub> | <sub>`erc`</sub> | <sub>`erc-myapp-dev-weu`</sub> | <sub>`erc-myapp-dev-weu-hxse`</sub> | 
| <sub>**`expressRouteGateway`**</sub> | <sub>`ergw`</sub> | <sub>`ergw-myapp-dev-weu`</sub> | <sub>`ergw-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-f"></a>F
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`firewall`**</sub> | <sub>`afw`</sub> | <sub>`afw-myapp-dev-weu`</sub> | <sub>`afw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`firewallPolicy`**</sub> | <sub>`afwp`</sub> | <sub>`afwp-myapp-dev-weu`</sub> | <sub>`afwp-myapp-dev-weu-hxse`</sub> | 
| <sub>**`frontDoor`**</sub> | <sub>`fd`</sub> | <sub>`fd-myapp-dev-weu`</sub> | <sub>`fd-myapp-dev-weu-hxse`</sub> | 
| <sub>**`frontDoorFirewallPolicy`**</sub> | <sub>`fdfw`</sub> | <sub>`fdfw-myapp-dev-weu`</sub> | <sub>`fdfw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`functionApp`**</sub> | <sub>`func`</sub> | <sub>`func-myapp-dev-weu`</sub> | <sub>`func-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-h"></a>H
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`hdInsightHadoopCluster`**</sub> | <sub>`hadoop`</sub> | <sub>`hadoop-myapp-dev-weu`</sub> | <sub>`hadoop-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightHbaseCluster`**</sub> | <sub>`hbase`</sub> | <sub>`hbase-myapp-dev-weu`</sub> | <sub>`hbase-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightInteractiveQueryCluster`**</sub> | <sub>`iqr`</sub> | <sub>`iqr-myapp-dev-weu`</sub> | <sub>`iqr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightKafkaCluster`**</sub> | <sub>`kafka`</sub> | <sub>`kafka-myapp-dev-weu`</sub> | <sub>`kafka-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightMlServicesCluster`**</sub> | <sub>`mls`</sub> | <sub>`mls-myapp-dev-weu`</sub> | <sub>`mls-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightRserverCluster`**</sub> | <sub>`rsv`</sub> | <sub>`rsv-myapp-dev-weu`</sub> | <sub>`rsv-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightSparkCluster`**</sub> | <sub>`spark`</sub> | <sub>`spark-myapp-dev-weu`</sub> | <sub>`spark-myapp-dev-weu-hxse`</sub> | 
| <sub>**`hdInsightStormCluster`**</sub> | <sub>`storm`</sub> | <sub>`storm-myapp-dev-weu`</sub> | <sub>`storm-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-i"></a>I
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`image`**</sub> | <sub>`img`</sub> | <sub>`img-myapp-dev-weu`</sub> | <sub>`img-myapp-dev-weu-hxse`</sub> | 
| <sub>**`iotCentralApplication`**</sub> | <sub>`iotapp`</sub> | <sub>`iotapp-myapp-dev-weu`</sub> | <sub>`iotapp-myapp-dev-weu-hxse`</sub> | 
| <sub>**`iotHub`**</sub> | <sub>`iot`</sub> | <sub>`iot-myapp-dev-weu`</sub> | <sub>`iot-myapp-dev-weu-hxse`</sub> | 
| <sub>**`iotHubConsumerGroup`**</sub> | <sub>`iotcg`</sub> | <sub>`iotcg-myapp-dev-weu`</sub> | <sub>`iotcg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`iotHubDps`**</sub> | <sub>`dps`</sub> | <sub>`dps-myapp-dev-weu`</sub> | <sub>`dps-myapp-dev-weu-hxse`</sub> | 
| <sub>**`iotHubDpsCertificate`**</sub> | <sub>`dpscert`</sub> | <sub>`dpscert-myapp-dev-weu`</sub> | <sub>`dpscert-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-k"></a>K
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`keyVault`**</sub> | <sub>`kv`</sub> | <sub>`kv-myapp-dev-weu`</sub> | <sub>`kv-myapp-dev-weu-hxse`</sub> | 
| <sub>**`keyVaultCertificate`**</sub> | <sub>`kvc`</sub> | <sub>`kvc-myapp-dev-weu`</sub> | <sub>`kvc-myapp-dev-weu-hxse`</sub> | 
| <sub>**`keyVaultKey`**</sub> | <sub>`kvk`</sub> | <sub>`kvk-myapp-dev-weu`</sub> | <sub>`kvk-myapp-dev-weu-hxse`</sub> | 
| <sub>**`keyVaultSecret`**</sub> | <sub>`kvs`</sub> | <sub>`kvs-myapp-dev-weu`</sub> | <sub>`kvs-myapp-dev-weu-hxse`</sub> | 
| <sub>**`kubernetesCluster`**</sub> | <sub>`aks`</sub> | <sub>`aks-myapp-dev-weu`</sub> | <sub>`aks-myapp-dev-weu-hxse`</sub> | 
| <sub>**`kustoCluster`**</sub> | <sub>`kc`</sub> | <sub>`kcmyappdevweu`</sub> | <sub>`kcmyappdevweuhxse`</sub> | 
| <sub>**`kustoDatabase`**</sub> | <sub>`kdb`</sub> | <sub>`kdb-myapp-dev-weu`</sub> | <sub>`kdb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`kustoEventHubDataConnection`**</sub> | <sub>`kehc`</sub> | <sub>`kehc-myapp-dev-weu`</sub> | <sub>`kehc-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-l"></a>L
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`linuxVirtualMachine`**</sub> | <sub>`vm`</sub> | <sub>`vm-myapp-dev-weu`</sub> | <sub>`vm-myapp-dev-weu-hxse`</sub> | 
| <sub>**`linuxVirtualMachineScaleSet`**</sub> | <sub>`vmss`</sub> | <sub>`vmss-myapp-dev-weu`</sub> | <sub>`vmss-myapp-dev-weu-hxse`</sub> | 
| <sub>**`loadBalancer`**</sub> | <sub>`lb`</sub> | <sub>`lb-myapp-dev-weu`</sub> | <sub>`lb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`loadBalancerNatRule`**</sub> | <sub>`lbnatrl`</sub> | <sub>`lbnatrl-myapp-dev-weu`</sub> | <sub>`lbnatrl-myapp-dev-weu-hxse`</sub> | 
| <sub>**`localNetworkGateway`**</sub> | <sub>`lgw`</sub> | <sub>`lgw-myapp-dev-weu`</sub> | <sub>`lgw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`logAnalyticsWorkspace`**</sub> | <sub>`log`</sub> | <sub>`log-myapp-dev-weu`</sub> | <sub>`log-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-m"></a>M
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`machineLearningWorkspace`**</sub> | <sub>`mlw`</sub> | <sub>`mlw-myapp-dev-weu`</sub> | <sub>`mlw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`managedDisk`**</sub> | <sub>`dsk`</sub> | <sub>`dsk-myapp-dev-weu`</sub> | <sub>`dsk-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mapsAccount`**</sub> | <sub>`map`</sub> | <sub>`map-myapp-dev-weu`</sub> | <sub>`map-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mariadbDatabase`**</sub> | <sub>`mariadb`</sub> | <sub>`mariadb-myapp-dev-weu`</sub> | <sub>`mariadb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mariadbFirewallRule`**</sub> | <sub>`mariafw`</sub> | <sub>`mariafw-myapp-dev-weu`</sub> | <sub>`mariafw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mariadbServer`**</sub> | <sub>`maria`</sub> | <sub>`maria-myapp-dev-weu`</sub> | <sub>`maria-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mariadbVirtualNetworkRule`**</sub> | <sub>`mariavn`</sub> | <sub>`mariavn-myapp-dev-weu`</sub> | <sub>`mariavn-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mssqlDatabase`**</sub> | <sub>`sqldb`</sub> | <sub>`sqldb-myapp-dev-weu`</sub> | <sub>`sqldb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mssqlElasticpool`**</sub> | <sub>`sqlep`</sub> | <sub>`sqlep-myapp-dev-weu`</sub> | <sub>`sqlep-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mssqlServer`**</sub> | <sub>`sql`</sub> | <sub>`sql-myapp-dev-weu`</sub> | <sub>`sql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mysqlDatabase`**</sub> | <sub>`mysqldb`</sub> | <sub>`mysqldb-myapp-dev-weu`</sub> | <sub>`mysqldb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mysqlFirewallRule`**</sub> | <sub>`mysqlfw`</sub> | <sub>`mysqlfw-myapp-dev-weu`</sub> | <sub>`mysqlfw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mysqlServer`**</sub> | <sub>`mysql`</sub> | <sub>`mysql-myapp-dev-weu`</sub> | <sub>`mysql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`mysqlVirtualNetworkRule`**</sub> | <sub>`mysqlvn`</sub> | <sub>`mysqlvn-myapp-dev-weu`</sub> | <sub>`mysqlvn-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-n"></a>N
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`networkInterface`**</sub> | <sub>`nic`</sub> | <sub>`nic-myapp-dev-weu`</sub> | <sub>`nic-myapp-dev-weu-hxse`</sub> | 
| <sub>**`networkSecurityGroup`**</sub> | <sub>`nsg`</sub> | <sub>`nsg-myapp-dev-weu`</sub> | <sub>`nsg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`networkSecurityGroupRule`**</sub> | <sub>`nsgr`</sub> | <sub>`nsgr-myapp-dev-weu`</sub> | <sub>`nsgr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`networkSecurityRule`**</sub> | <sub>`nsgr`</sub> | <sub>`nsgr-myapp-dev-weu`</sub> | <sub>`nsgr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`networkWatcher`**</sub> | <sub>`nw`</sub> | <sub>`nw-myapp-dev-weu`</sub> | <sub>`nw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`notificationHub`**</sub> | <sub>`nh`</sub> | <sub>`nh-myapp-dev-weu`</sub> | <sub>`nh-myapp-dev-weu-hxse`</sub> | 
| <sub>**`notificationHubAuthorizationRule`**</sub> | <sub>`dnsrec`</sub> | <sub>`dnsrec-myapp-dev-weu`</sub> | <sub>`dnsrec-myapp-dev-weu-hxse`</sub> | 
| <sub>**`notificationHubNamespace`**</sub> | <sub>`dnsrec`</sub> | <sub>`dnsrec-myapp-dev-weu`</sub> | <sub>`dnsrec-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-p"></a>P
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`pointToSiteVpnGateway`**</sub> | <sub>`vpngw`</sub> | <sub>`vpngw-myapp-dev-weu`</sub> | <sub>`vpngw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`postgresqlDatabase`**</sub> | <sub>`psqldb`</sub> | <sub>`psqldb-myapp-dev-weu`</sub> | <sub>`psqldb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`postgresqlFirewallRule`**</sub> | <sub>`psqlfw`</sub> | <sub>`psqlfw-myapp-dev-weu`</sub> | <sub>`psqlfw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`postgresqlServer`**</sub> | <sub>`psql`</sub> | <sub>`psql-myapp-dev-weu`</sub> | <sub>`psql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`postgresqlVirtualNetworkRule`**</sub> | <sub>`psqlvn`</sub> | <sub>`psqlvn-myapp-dev-weu`</sub> | <sub>`psqlvn-myapp-dev-weu-hxse`</sub> | 
| <sub>**`powerbiEmbedded`**</sub> | <sub>`pbi`</sub> | <sub>`pbi-myapp-dev-weu`</sub> | <sub>`pbi-myapp-dev-weu-hxse`</sub> | 
| <sub>**`privateDnsZone`**</sub> | <sub>`pdns`</sub> | <sub>`pdns-myapp-dev-weu`</sub> | <sub>`pdns-myapp-dev-weu-hxse`</sub> | 
| <sub>**`publicIp`**</sub> | <sub>`pip`</sub> | <sub>`pip-myapp-dev-weu`</sub> | <sub>`pip-myapp-dev-weu-hxse`</sub> | 
| <sub>**`publicIpPrefix`**</sub> | <sub>`pippf`</sub> | <sub>`pippf-myapp-dev-weu`</sub> | <sub>`pippf-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-r"></a>R
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`redisCache`**</sub> | <sub>`redis`</sub> | <sub>`redis-myapp-dev-weu`</sub> | <sub>`redis-myapp-dev-weu-hxse`</sub> | 
| <sub>**`redisFirewallRule`**</sub> | <sub>`redisfw`</sub> | <sub>`redisfwmyappdevweu`</sub> | <sub>`redisfwmyappdevweuhxse`</sub> | 
| <sub>**`relayHybridConnection`**</sub> | <sub>`rlhc`</sub> | <sub>`rlhc-myapp-dev-weu`</sub> | <sub>`rlhc-myapp-dev-weu-hxse`</sub> | 
| <sub>**`relayNamespace`**</sub> | <sub>`rln`</sub> | <sub>`rln-myapp-dev-weu`</sub> | <sub>`rln-myapp-dev-weu-hxse`</sub> | 
| <sub>**`resourceGroup`**</sub> | <sub>`rg`</sub> | <sub>`rg-myapp-dev-weu`</sub> | <sub>`rg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`roleAssignment`**</sub> | <sub>`ra`</sub> | <sub>`ra-myapp-dev-weu`</sub> | <sub>`ra-myapp-dev-weu-hxse`</sub> | 
| <sub>**`roleDefinition`**</sub> | <sub>`rd`</sub> | <sub>`rd-myapp-dev-weu`</sub> | <sub>`rd-myapp-dev-weu-hxse`</sub> | 
| <sub>**`route`**</sub> | <sub>`rt`</sub> | <sub>`rt-myapp-dev-weu`</sub> | <sub>`rt-myapp-dev-weu-hxse`</sub> | 
| <sub>**`routeTable`**</sub> | <sub>`route`</sub> | <sub>`route-myapp-dev-weu`</sub> | <sub>`route-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-s"></a>S
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`serviceBusNamespace`**</sub> | <sub>`sb`</sub> | <sub>`sb-myapp-dev-weu`</sub> | <sub>`sb-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusNamespaceAuthorizationRule`**</sub> | <sub>`sbar`</sub> | <sub>`sbar-myapp-dev-weu`</sub> | <sub>`sbar-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusQueue`**</sub> | <sub>`sbq`</sub> | <sub>`sbq-myapp-dev-weu`</sub> | <sub>`sbq-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusQueueAuthorizationRule`**</sub> | <sub>`sbqar`</sub> | <sub>`sbqar-myapp-dev-weu`</sub> | <sub>`sbqar-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusSubscription`**</sub> | <sub>`sbs`</sub> | <sub>`sbs-myapp-dev-weu`</sub> | <sub>`sbs-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusSubscriptionRule`**</sub> | <sub>`sbsr`</sub> | <sub>`sbsr-myapp-dev-weu`</sub> | <sub>`sbsr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusTopic`**</sub> | <sub>`sbt`</sub> | <sub>`sbt-myapp-dev-weu`</sub> | <sub>`sbt-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceBusTopicAuthorizationRule`**</sub> | <sub>`dnsrec`</sub> | <sub>`dnsrec-myapp-dev-weu`</sub> | <sub>`dnsrec-myapp-dev-weu-hxse`</sub> | 
| <sub>**`serviceFabricCluster`**</sub> | <sub>`sf`</sub> | <sub>`sf-myapp-dev-weu`</sub> | <sub>`sf-myapp-dev-weu-hxse`</sub> | 
| <sub>**`sharedImage`**</sub> | <sub>`si`</sub> | <sub>`si-myapp-dev-weu`</sub> | <sub>`si-myapp-dev-weu-hxse`</sub> | 
| <sub>**`sharedImageGallery`**</sub> | <sub>`sig`</sub> | <sub>`sigmyappdevweu`</sub> | <sub>`sigmyappdevweuhxse`</sub> | 
| <sub>**`signalrService`**</sub> | <sub>`sgnlr`</sub> | <sub>`sgnlr-myapp-dev-weu`</sub> | <sub>`sgnlr-myapp-dev-weu-hxse`</sub> | 
| <sub>**`snapshots`**</sub> | <sub>`snap`</sub> | <sub>`snap-myapp-dev-weu`</sub> | <sub>`snap-myapp-dev-weu-hxse`</sub> | 
| <sub>**`sqlElasticpool`**</sub> | <sub>`sqlep`</sub> | <sub>`sqlep-myapp-dev-weu`</sub> | <sub>`sqlep-myapp-dev-weu-hxse`</sub> | 
| <sub>**`sqlFailoverGroup`**</sub> | <sub>`sqlfg`</sub> | <sub>`sqlfg-myapp-dev-weu`</sub> | <sub>`sqlfg-myapp-dev-weu-hxse`</sub> | 
| <sub>**`sqlFirewallRule`**</sub> | <sub>`sqlfw`</sub> | <sub>`sqlfw-myapp-dev-weu`</sub> | <sub>`sqlfw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`sqlServer`**</sub> | <sub>`sql`</sub> | <sub>`sql-myapp-dev-weu`</sub> | <sub>`sql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageAccount`**</sub> | <sub>`st`</sub> | <sub>`stmyappdevweu`</sub> | <sub>`stmyappdevweuhxse`</sub> | 
| <sub>**`storageBlob`**</sub> | <sub>`blob`</sub> | <sub>`blob-myapp-dev-weu`</sub> | <sub>`blob-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageContainer`**</sub> | <sub>`stct`</sub> | <sub>`stct-myapp-dev-weu`</sub> | <sub>`stct-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageDataLakeGen2Filesystem`**</sub> | <sub>`stdl`</sub> | <sub>`stdl-myapp-dev-weu`</sub> | <sub>`stdl-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageQueue`**</sub> | <sub>`stq`</sub> | <sub>`stq-myapp-dev-weu`</sub> | <sub>`stq-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageShare`**</sub> | <sub>`sts`</sub> | <sub>`sts-myapp-dev-weu`</sub> | <sub>`sts-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageShareDirectory`**</sub> | <sub>`sts`</sub> | <sub>`sts-myapp-dev-weu`</sub> | <sub>`sts-myapp-dev-weu-hxse`</sub> | 
| <sub>**`storageTable`**</sub> | <sub>`stt`</sub> | <sub>`stt-myapp-dev-weu`</sub> | <sub>`stt-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsFunctionJavascriptUdf`**</sub> | <sub>`asafunc`</sub> | <sub>`asafunc-myapp-dev-weu`</sub> | <sub>`asafunc-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsJob`**</sub> | <sub>`asa`</sub> | <sub>`asa-myapp-dev-weu`</sub> | <sub>`asa-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsOutputBlob`**</sub> | <sub>`asaoblob`</sub> | <sub>`asaoblob-myapp-dev-weu`</sub> | <sub>`asaoblob-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsOutputEventHub`**</sub> | <sub>`asaoeh`</sub> | <sub>`asaoeh-myapp-dev-weu`</sub> | <sub>`asaoeh-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsOutputMssql`**</sub> | <sub>`asaomssql`</sub> | <sub>`asaomssql-myapp-dev-weu`</sub> | <sub>`asaomssql-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsOutputServiceBusQueue`**</sub> | <sub>`asaosbq`</sub> | <sub>`asaosbq-myapp-dev-weu`</sub> | <sub>`asaosbq-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsOutputServiceBusTopic`**</sub> | <sub>`asaosbt`</sub> | <sub>`asaosbt-myapp-dev-weu`</sub> | <sub>`asaosbt-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsReferenceInputBlob`**</sub> | <sub>`asarblob`</sub> | <sub>`asarblob-myapp-dev-weu`</sub> | <sub>`asarblob-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsStreamInputBlob`**</sub> | <sub>`asaiblob`</sub> | <sub>`asaiblob-myapp-dev-weu`</sub> | <sub>`asaiblob-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsStreamInputEventHub`**</sub> | <sub>`asaieh`</sub> | <sub>`asaieh-myapp-dev-weu`</sub> | <sub>`asaieh-myapp-dev-weu-hxse`</sub> | 
| <sub>**`streamAnalyticsStreamInputIotHub`**</sub> | <sub>`asaiiot`</sub> | <sub>`asaiiot-myapp-dev-weu`</sub> | <sub>`asaiiot-myapp-dev-weu-hxse`</sub> | 
| <sub>**`subnet`**</sub> | <sub>`snet`</sub> | <sub>`snet-myapp-dev-weu`</sub> | <sub>`snet-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-t"></a>T
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`templateDeployment`**</sub> | <sub>`deploy`</sub> | <sub>`deploy-myapp-dev-weu`</sub> | <sub>`deploy-myapp-dev-weu-hxse`</sub> | 
| <sub>**`trafficManagerProfile`**</sub> | <sub>`traf`</sub> | <sub>`traf-myapp-dev-weu`</sub> | <sub>`traf-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-v"></a>V
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`virtualMachine`**</sub> | <sub>`vm`</sub> | <sub>`vm-myapp-dev-we`</sub> | <sub>`vm-myapp-dev-we`</sub> | 
| <sub>**`virtualMachineScaleSet`**</sub> | <sub>`vmss`</sub> | <sub>`vmss-myapp-dev`</sub> | <sub>`vmss-myapp-dev`</sub> | 
| <sub>**`virtualNetwork`**</sub> | <sub>`vnet`</sub> | <sub>`vnet-myapp-dev-weu`</sub> | <sub>`vnet-myapp-dev-weu-hxse`</sub> | 
| <sub>**`virtualNetworkGateway`**</sub> | <sub>`vgw`</sub> | <sub>`vgw-myapp-dev-weu`</sub> | <sub>`vgw-myapp-dev-weu-hxse`</sub> | 
| <sub>**`virtualNetworkPeering`**</sub> | <sub>`vpeer`</sub> | <sub>`vpeer-myapp-dev-weu`</sub> | <sub>`vpeer-myapp-dev-weu-hxse`</sub> | 
| <sub>**`virtualWan`**</sub> | <sub>`vwan`</sub> | <sub>`vwan-myapp-dev-weu`</sub> | <sub>`vwan-myapp-dev-weu-hxse`</sub> | 
[Go to top](#reference)

## <a name="ref-w"></a>W
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| <sub>**`windowsVirtualMachine`**</sub> | <sub>`vm`</sub> | <sub>`vm-myapp-dev-we`</sub> | <sub>`vm-myapp-dev-we`</sub> | 
| <sub>**`windowsVirtualMachineScaleSet`**</sub> | <sub>`vmss`</sub> | <sub>`vmss-myapp-dev`</sub> | <sub>`vmss-myapp-dev`</sub> | 
[Go to top](#reference)


## License

Azure naming for Bicep/ARM is licensed under the [MIT](LICENSE) license.