<!-- NOTE: This is a generated file, do not update directly. -->
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

Below is a reference of the output `names` object values with the following sample input:

```bicep
suffix = [
  'myapp'
  'dev'
]

uniqueLength = 4
```

### Index: [A](#ref-a) - [B](#ref-b) - [C](#ref-c) - [D](#ref-d) - [E](#ref-e) - [F](#ref-f) - [H](#ref-h) - [I](#ref-i) - [K](#ref-k) - [L](#ref-l) - [M](#ref-m) - [N](#ref-n) - [P](#ref-p) - [R](#ref-r) - [S](#ref-s) - [T](#ref-t) - [V](#ref-v) - [W](#ref-w)

## <a name="ref-a"></a>A
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`analysisServicesServer`** | `as` | `asmyappdev` | `asmyappdevcv7z` | 
| **`apiManagement`** | `apim` | `apimmyappdev` | `apimmyappdevcv7z` | 
| **`appConfiguration`** | `appcg` | `appcg-myapp-dev` | `appcg-myapp-dev-cv7z` | 
| **`appService`** | `app` | `app-myapp-dev` | `app-myapp-dev-cv7z` | 
| **`appServiceEnvironment`** | `ase` | `ase-myapp-dev` | `ase-myapp-dev-cv7z` | 
| **`appServicePlan`** | `plan` | `plan-myapp-dev` | `plan-myapp-dev-cv7z` | 
| **`applicationGateway`** | `agw` | `agw-myapp-dev` | `agw-myapp-dev-cv7z` | 
| **`applicationInsights`** | `appi` | `appi-myapp-dev` | `appi-myapp-dev-cv7z` | 
| **`applicationSecurityGroup`** | `asg` | `asg-myapp-dev` | `asg-myapp-dev-cv7z` | 
| **`automationAccount`** | `aa` | `aa-myapp-dev` | `aa-myapp-dev-cv7z` | 
| **`automationCertificate`** | `aacert` | `aacert-myapp-dev` | `aacert-myapp-dev-cv7z` | 
| **`automationCredential`** | `aacred` | `aacred-myapp-dev` | `aacred-myapp-dev-cv7z` | 
| **`automationRunbook`** | `aacred` | `aacred-myapp-dev` | `aacred-myapp-dev-cv7z` | 
| **`automationSchedule`** | `aasched` | `aasched-myapp-dev` | `aasched-myapp-dev-cv7z` | 
| **`automationVariable`** | `aavar` | `aavar-myapp-dev` | `aavar-myapp-dev-cv7z` | 
| **`availabilitySet`** | `avail` | `avail-myapp-dev` | `avail-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-b"></a>B
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`bastionHost`** | `snap` | `snap-myapp-dev` | `snap-myapp-dev-cv7z` | 
| **`batchAccount`** | `ba` | `bamyappdev` | `bamyappdevcv7z` | 
| **`batchApplication`** | `baapp` | `baapp-myapp-dev` | `baapp-myapp-dev-cv7z` | 
| **`batchCertificate`** | `bacert` | `bacert-myapp-dev` | `bacert-myapp-dev-cv7z` | 
| **`batchPool`** | `bapool` | `bapool-myapp-dev` | `bapool-myapp-dev-cv7z` | 
| **`botChannelDirectline`** | `botline` | `botline-myapp-dev` | `botline-myapp-dev-cv7z` | 
| **`botChannelEmail`** | `botmail` | `botmail-myapp-dev` | `botmail-myapp-dev-cv7z` | 
| **`botChannelMsTeams`** | `botteams` | `botteams-myapp-dev` | `botteams-myapp-dev-cv7z` | 
| **`botChannelSlack`** | `botslack` | `botslack-myapp-dev` | `botslack-myapp-dev-cv7z` | 
| **`botChannelsRegistration`** | `botchan` | `botchan-myapp-dev` | `botchan-myapp-dev-cv7z` | 
| **`botConnection`** | `botcon` | `botcon-myapp-dev` | `botcon-myapp-dev-cv7z` | 
| **`botWebApp`** | `bot` | `bot-myapp-dev` | `bot-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-c"></a>C
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`cdnEndpoint`** | `cdn` | `cdn-myapp-dev` | `cdn-myapp-dev-cv7z` | 
| **`cdnProfile`** | `cdnprof` | `cdnprof-myapp-dev` | `cdnprof-myapp-dev-cv7z` | 
| **`cognitiveAccount`** | `cog` | `cog-myapp-dev` | `cog-myapp-dev-cv7z` | 
| **`containerApp`** | `capp` | `capp-myapp-dev` | `capp-myapp-dev-cv7z` | 
| **`containerGroup`** | `cg` | `cg-myapp-dev` | `cg-myapp-dev-cv7z` | 
| **`containerRegistry`** | `acr` | `acrmyappdev` | `acrmyappdevcv7z` | 
| **`containerRegistryWebhook`** | `crwh` | `crwhmyappdev` | `crwhmyappdevcv7z` | 
| **`cosmosdbAccount`** | `cosmos` | `cosmos-myapp-dev` | `cosmos-myapp-dev-cv7z` | 
| **`customProvider`** | `prov` | `prov-myapp-dev` | `prov-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-d"></a>D
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`dashboard`** | `dsb` | `dsb-myapp-dev` | `dsb-myapp-dev-cv7z` | 
| **`dataFactory`** | `adf` | `adf-myapp-dev` | `adf-myapp-dev-cv7z` | 
| **`dataFactoryDatasetMysql`** | `adfmysql` | `adfmysql-myapp-dev` | `adfmysql-myapp-dev-cv7z` | 
| **`dataFactoryDatasetPostgresql`** | `adfpsql` | `adfpsql-myapp-dev` | `adfpsql-myapp-dev-cv7z` | 
| **`dataFactoryDatasetSqlServerTable`** | `adfmssql` | `adfmssql-myapp-dev` | `adfmssql-myapp-dev-cv7z` | 
| **`dataFactoryIntegrationRuntimeManaged`** | `adfir` | `adfir-myapp-dev` | `adfir-myapp-dev-cv7z` | 
| **`dataFactoryLinkedServiceDataLakeStorageGen2`** | `adfsvst` | `adfsvst-myapp-dev` | `adfsvst-myapp-dev-cv7z` | 
| **`dataFactoryLinkedServiceKeyVault`** | `adfsvkv` | `adfsvkv-myapp-dev` | `adfsvkv-myapp-dev-cv7z` | 
| **`dataFactoryLinkedServiceMysql`** | `adfsvmysql` | `adfsvmysql-myapp-dev` | `adfsvmysql-myapp-dev-cv7z` | 
| **`dataFactoryLinkedServicePostgresql`** | `adfsvpsql` | `adfsvpsql-myapp-dev` | `adfsvpsql-myapp-dev-cv7z` | 
| **`dataFactoryLinkedServiceSqlServer`** | `adfsvmssql` | `adfsvmssql-myapp-dev` | `adfsvmssql-myapp-dev-cv7z` | 
| **`dataFactoryPipeline`** | `adfpl` | `adfpl-myapp-dev` | `adfpl-myapp-dev-cv7z` | 
| **`dataFactoryTriggerSchedule`** | `adftg` | `adftg-myapp-dev` | `adftg-myapp-dev-cv7z` | 
| **`dataLakeAnalyticsAccount`** | `dla` | `dlamyappdev` | `dlamyappdevcv7z` | 
| **`dataLakeAnalyticsFirewallRule`** | `dlfw` | `dlfw-myapp-dev` | `dlfw-myapp-dev-cv7z` | 
| **`dataLakeStore`** | `dls` | `dlsmyappdev` | `dlsmyappdevcv7z` | 
| **`dataLakeStoreFirewallRule`** | `dlsfw` | `dlsfw-myapp-dev` | `dlsfw-myapp-dev-cv7z` | 
| **`databaseMigrationProject`** | `migr` | `migr-myapp-dev` | `migr-myapp-dev-cv7z` | 
| **`databaseMigrationService`** | `dms` | `dms-myapp-dev` | `dms-myapp-dev-cv7z` | 
| **`databricksWorkspace`** | `dbw` | `dbw-myapp-dev` | `dbw-myapp-dev-cv7z` | 
| **`devTestLab`** | `lab` | `lab-myapp-dev` | `lab-myapp-dev-cv7z` | 
| **`devTestLinuxVirtualMachine`** | `labvm` | `labvm-myapp-dev` | `labvm-myapp-dev-cv7z` | 
| **`devTestWindowsVirtualMachine`** | `labvm` | `labvm-myapp-dev` | `labvm-myapp-dev` | 
| **`diskEncryptionSet`** | `des` | `des-myapp-dev` | `des-myapp-dev-cv7z` | 
| **`dnsZone`** | `dns` | `dns-myapp-dev` | `dns-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-e"></a>E
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`eventGridDomain`** | `egd` | `egd-myapp-dev` | `egd-myapp-dev-cv7z` | 
| **`eventGridDomainTopic`** | `egdt` | `egdt-myapp-dev` | `egdt-myapp-dev-cv7z` | 
| **`eventGridEventSubscription`** | `egs` | `egs-myapp-dev` | `egs-myapp-dev-cv7z` | 
| **`eventGridTopic`** | `egt` | `egt-myapp-dev` | `egt-myapp-dev-cv7z` | 
| **`eventHub`** | `evh` | `evh-myapp-dev` | `evh-myapp-dev-cv7z` | 
| **`eventHubAuthorizationRule`** | `ehar` | `ehar-myapp-dev` | `ehar-myapp-dev-cv7z` | 
| **`eventHubConsumerGroup`** | `ehcg` | `ehcg-myapp-dev` | `ehcg-myapp-dev-cv7z` | 
| **`eventHubNamespace`** | `ehn` | `ehn-myapp-dev` | `ehn-myapp-dev-cv7z` | 
| **`eventHubNamespaceAuthorizationRule`** | `ehnar` | `ehnar-myapp-dev` | `ehnar-myapp-dev-cv7z` | 
| **`eventHubNamespaceDisasterRecoveryConfig`** | `ehdr` | `ehdr-myapp-dev` | `ehdr-myapp-dev-cv7z` | 
| **`expressRouteCircuit`** | `erc` | `erc-myapp-dev` | `erc-myapp-dev-cv7z` | 
| **`expressRouteGateway`** | `ergw` | `ergw-myapp-dev` | `ergw-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-f"></a>F
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`firewall`** | `afw` | `afw-myapp-dev` | `afw-myapp-dev-cv7z` | 
| **`firewallPolicy`** | `afwp` | `afwp-myapp-dev` | `afwp-myapp-dev-cv7z` | 
| **`frontDoor`** | `fd` | `fd-myapp-dev` | `fd-myapp-dev-cv7z` | 
| **`frontDoorFirewallPolicy`** | `fdfw` | `fdfw-myapp-dev` | `fdfw-myapp-dev-cv7z` | 
| **`functionApp`** | `func` | `func-myapp-dev` | `func-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-h"></a>H
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`hdInsightHadoopCluster`** | `hadoop` | `hadoop-myapp-dev` | `hadoop-myapp-dev-cv7z` | 
| **`hdInsightHbaseCluster`** | `hbase` | `hbase-myapp-dev` | `hbase-myapp-dev-cv7z` | 
| **`hdInsightInteractiveQueryCluster`** | `iqr` | `iqr-myapp-dev` | `iqr-myapp-dev-cv7z` | 
| **`hdInsightKafkaCluster`** | `kafka` | `kafka-myapp-dev` | `kafka-myapp-dev-cv7z` | 
| **`hdInsightMlServicesCluster`** | `mls` | `mls-myapp-dev` | `mls-myapp-dev-cv7z` | 
| **`hdInsightRserverCluster`** | `rsv` | `rsv-myapp-dev` | `rsv-myapp-dev-cv7z` | 
| **`hdInsightSparkCluster`** | `spark` | `spark-myapp-dev` | `spark-myapp-dev-cv7z` | 
| **`hdInsightStormCluster`** | `storm` | `storm-myapp-dev` | `storm-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-i"></a>I
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`image`** | `img` | `img-myapp-dev` | `img-myapp-dev-cv7z` | 
| **`iotCentralApplication`** | `iotapp` | `iotapp-myapp-dev` | `iotapp-myapp-dev-cv7z` | 
| **`iotHub`** | `iot` | `iot-myapp-dev` | `iot-myapp-dev-cv7z` | 
| **`iotHubConsumerGroup`** | `iotcg` | `iotcg-myapp-dev` | `iotcg-myapp-dev-cv7z` | 
| **`iotHubDps`** | `dps` | `dps-myapp-dev` | `dps-myapp-dev-cv7z` | 
| **`iotHubDpsCertificate`** | `dpscert` | `dpscert-myapp-dev` | `dpscert-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-k"></a>K
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`keyVault`** | `kv` | `kv-myapp-dev` | `kv-myapp-dev-cv7z` | 
| **`keyVaultCertificate`** | `kvc` | `kvc-myapp-dev` | `kvc-myapp-dev-cv7z` | 
| **`keyVaultKey`** | `kvk` | `kvk-myapp-dev` | `kvk-myapp-dev-cv7z` | 
| **`keyVaultSecret`** | `kvs` | `kvs-myapp-dev` | `kvs-myapp-dev-cv7z` | 
| **`kubernetesCluster`** | `aks` | `aks-myapp-dev` | `aks-myapp-dev-cv7z` | 
| **`kustoCluster`** | `kc` | `kcmyappdev` | `kcmyappdevcv7z` | 
| **`kustoDatabase`** | `kdb` | `kdb-myapp-dev` | `kdb-myapp-dev-cv7z` | 
| **`kustoEventHubDataConnection`** | `kehc` | `kehc-myapp-dev` | `kehc-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-l"></a>L
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`linuxVirtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-cv7z` | 
| **`linuxVirtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-cv7z` | 
| **`loadBalancer`** | `lb` | `lb-myapp-dev` | `lb-myapp-dev-cv7z` | 
| **`loadBalancerNatRule`** | `lbnatrl` | `lbnatrl-myapp-dev` | `lbnatrl-myapp-dev-cv7z` | 
| **`localNetworkGateway`** | `lgw` | `lgw-myapp-dev` | `lgw-myapp-dev-cv7z` | 
| **`logAnalyticsWorkspace`** | `log` | `log-myapp-dev` | `log-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-m"></a>M
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`machineLearningWorkspace`** | `mlw` | `mlw-myapp-dev` | `mlw-myapp-dev-cv7z` | 
| **`managedDisk`** | `dsk` | `dsk-myapp-dev` | `dsk-myapp-dev-cv7z` | 
| **`mapsAccount`** | `map` | `map-myapp-dev` | `map-myapp-dev-cv7z` | 
| **`mariadbDatabase`** | `mariadb` | `mariadb-myapp-dev` | `mariadb-myapp-dev-cv7z` | 
| **`mariadbFirewallRule`** | `mariafw` | `mariafw-myapp-dev` | `mariafw-myapp-dev-cv7z` | 
| **`mariadbServer`** | `maria` | `maria-myapp-dev` | `maria-myapp-dev-cv7z` | 
| **`mariadbVirtualNetworkRule`** | `mariavn` | `mariavn-myapp-dev` | `mariavn-myapp-dev-cv7z` | 
| **`mssqlDatabase`** | `sqldb` | `sqldb-myapp-dev` | `sqldb-myapp-dev-cv7z` | 
| **`mssqlElasticpool`** | `sqlep` | `sqlep-myapp-dev` | `sqlep-myapp-dev-cv7z` | 
| **`mssqlServer`** | `sql` | `sql-myapp-dev` | `sql-myapp-dev-cv7z` | 
| **`mysqlDatabase`** | `mysqldb` | `mysqldb-myapp-dev` | `mysqldb-myapp-dev-cv7z` | 
| **`mysqlFirewallRule`** | `mysqlfw` | `mysqlfw-myapp-dev` | `mysqlfw-myapp-dev-cv7z` | 
| **`mysqlServer`** | `mysql` | `mysql-myapp-dev` | `mysql-myapp-dev-cv7z` | 
| **`mysqlVirtualNetworkRule`** | `mysqlvn` | `mysqlvn-myapp-dev` | `mysqlvn-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-n"></a>N
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`networkInterface`** | `nic` | `nic-myapp-dev` | `nic-myapp-dev-cv7z` | 
| **`networkSecurityGroup`** | `nsg` | `nsg-myapp-dev` | `nsg-myapp-dev-cv7z` | 
| **`networkSecurityGroupRule`** | `nsgr` | `nsgr-myapp-dev` | `nsgr-myapp-dev-cv7z` | 
| **`networkSecurityRule`** | `nsgr` | `nsgr-myapp-dev` | `nsgr-myapp-dev-cv7z` | 
| **`networkWatcher`** | `nw` | `nw-myapp-dev` | `nw-myapp-dev-cv7z` | 
| **`notificationHub`** | `nh` | `nh-myapp-dev` | `nh-myapp-dev-cv7z` | 
| **`notificationHubAuthorizationRule`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-cv7z` | 
| **`notificationHubNamespace`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-p"></a>P
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`pointToSiteVpnGateway`** | `vpngw` | `vpngw-myapp-dev` | `vpngw-myapp-dev-cv7z` | 
| **`postgresqlDatabase`** | `psqldb` | `psqldb-myapp-dev` | `psqldb-myapp-dev-cv7z` | 
| **`postgresqlFirewallRule`** | `psqlfw` | `psqlfw-myapp-dev` | `psqlfw-myapp-dev-cv7z` | 
| **`postgresqlServer`** | `psql` | `psql-myapp-dev` | `psql-myapp-dev-cv7z` | 
| **`postgresqlVirtualNetworkRule`** | `psqlvn` | `psqlvn-myapp-dev` | `psqlvn-myapp-dev-cv7z` | 
| **`powerbiEmbedded`** | `pbi` | `pbi-myapp-dev` | `pbi-myapp-dev-cv7z` | 
| **`privateDnsZone`** | `pdns` | `pdns-myapp-dev` | `pdns-myapp-dev-cv7z` | 
| **`publicIp`** | `pip` | `pip-myapp-dev` | `pip-myapp-dev-cv7z` | 
| **`publicIpPrefix`** | `pippf` | `pippf-myapp-dev` | `pippf-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-r"></a>R
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`redisCache`** | `redis` | `redis-myapp-dev` | `redis-myapp-dev-cv7z` | 
| **`redisFirewallRule`** | `redisfw` | `redisfwmyappdev` | `redisfwmyappdevcv7z` | 
| **`relayHybridConnection`** | `rlhc` | `rlhc-myapp-dev` | `rlhc-myapp-dev-cv7z` | 
| **`relayNamespace`** | `rln` | `rln-myapp-dev` | `rln-myapp-dev-cv7z` | 
| **`resourceGroup`** | `rg` | `rg-myapp-dev` | `rg-myapp-dev-cv7z` | 
| **`roleAssignment`** | `ra` | `ra-myapp-dev` | `ra-myapp-dev-cv7z` | 
| **`roleDefinition`** | `rd` | `rd-myapp-dev` | `rd-myapp-dev-cv7z` | 
| **`route`** | `rt` | `rt-myapp-dev` | `rt-myapp-dev-cv7z` | 
| **`routeTable`** | `route` | `route-myapp-dev` | `route-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-s"></a>S
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`serviceBusNamespace`** | `sb` | `sb-myapp-dev` | `sb-myapp-dev-cv7z` | 
| **`serviceBusNamespaceAuthorizationRule`** | `sbar` | `sbar-myapp-dev` | `sbar-myapp-dev-cv7z` | 
| **`serviceBusQueue`** | `sbq` | `sbq-myapp-dev` | `sbq-myapp-dev-cv7z` | 
| **`serviceBusQueueAuthorizationRule`** | `sbqar` | `sbqar-myapp-dev` | `sbqar-myapp-dev-cv7z` | 
| **`serviceBusSubscription`** | `sbs` | `sbs-myapp-dev` | `sbs-myapp-dev-cv7z` | 
| **`serviceBusSubscriptionRule`** | `sbsr` | `sbsr-myapp-dev` | `sbsr-myapp-dev-cv7z` | 
| **`serviceBusTopic`** | `sbt` | `sbt-myapp-dev` | `sbt-myapp-dev-cv7z` | 
| **`serviceBusTopicAuthorizationRule`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-cv7z` | 
| **`serviceFabricCluster`** | `sf` | `sf-myapp-dev` | `sf-myapp-dev-cv7z` | 
| **`sharedImage`** | `si` | `si-myapp-dev` | `si-myapp-dev-cv7z` | 
| **`sharedImageGallery`** | `sig` | `sigmyappdev` | `sigmyappdevcv7z` | 
| **`signalrService`** | `sgnlr` | `sgnlr-myapp-dev` | `sgnlr-myapp-dev-cv7z` | 
| **`snapshots`** | `snap` | `snap-myapp-dev` | `snap-myapp-dev-cv7z` | 
| **`sqlElasticpool`** | `sqlep` | `sqlep-myapp-dev` | `sqlep-myapp-dev-cv7z` | 
| **`sqlFailoverGroup`** | `sqlfg` | `sqlfg-myapp-dev` | `sqlfg-myapp-dev-cv7z` | 
| **`sqlFirewallRule`** | `sqlfw` | `sqlfw-myapp-dev` | `sqlfw-myapp-dev-cv7z` | 
| **`sqlServer`** | `sql` | `sql-myapp-dev` | `sql-myapp-dev-cv7z` | 
| **`storageAccount`** | `st` | `stmyappdev` | `stmyappdevcv7z` | 
| **`storageBlob`** | `blob` | `blob-myapp-dev` | `blob-myapp-dev-cv7z` | 
| **`storageContainer`** | `stct` | `stct-myapp-dev` | `stct-myapp-dev-cv7z` | 
| **`storageDataLakeGen2Filesystem`** | `stdl` | `stdl-myapp-dev` | `stdl-myapp-dev-cv7z` | 
| **`storageQueue`** | `stq` | `stq-myapp-dev` | `stq-myapp-dev-cv7z` | 
| **`storageShare`** | `sts` | `sts-myapp-dev` | `sts-myapp-dev-cv7z` | 
| **`storageShareDirectory`** | `sts` | `sts-myapp-dev` | `sts-myapp-dev-cv7z` | 
| **`storageTable`** | `stt` | `stt-myapp-dev` | `stt-myapp-dev-cv7z` | 
| **`streamAnalyticsFunctionJavascriptUdf`** | `asafunc` | `asafunc-myapp-dev` | `asafunc-myapp-dev-cv7z` | 
| **`streamAnalyticsJob`** | `asa` | `asa-myapp-dev` | `asa-myapp-dev-cv7z` | 
| **`streamAnalyticsOutputBlob`** | `asaoblob` | `asaoblob-myapp-dev` | `asaoblob-myapp-dev-cv7z` | 
| **`streamAnalyticsOutputEventHub`** | `asaoeh` | `asaoeh-myapp-dev` | `asaoeh-myapp-dev-cv7z` | 
| **`streamAnalyticsOutputMssql`** | `asaomssql` | `asaomssql-myapp-dev` | `asaomssql-myapp-dev-cv7z` | 
| **`streamAnalyticsOutputServiceBusQueue`** | `asaosbq` | `asaosbq-myapp-dev` | `asaosbq-myapp-dev-cv7z` | 
| **`streamAnalyticsOutputServiceBusTopic`** | `asaosbt` | `asaosbt-myapp-dev` | `asaosbt-myapp-dev-cv7z` | 
| **`streamAnalyticsReferenceInputBlob`** | `asarblob` | `asarblob-myapp-dev` | `asarblob-myapp-dev-cv7z` | 
| **`streamAnalyticsStreamInputBlob`** | `asaiblob` | `asaiblob-myapp-dev` | `asaiblob-myapp-dev-cv7z` | 
| **`streamAnalyticsStreamInputEventHub`** | `asaieh` | `asaieh-myapp-dev` | `asaieh-myapp-dev-cv7z` | 
| **`streamAnalyticsStreamInputIotHub`** | `asaiiot` | `asaiiot-myapp-dev` | `asaiiot-myapp-dev-cv7z` | 
| **`subnet`** | `snet` | `snet-myapp-dev` | `snet-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-t"></a>T
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`templateDeployment`** | `deploy` | `deploy-myapp-dev` | `deploy-myapp-dev-cv7z` | 
| **`trafficManagerProfile`** | `traf` | `traf-myapp-dev` | `traf-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-v"></a>V
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`virtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-cv` | 
| **`virtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-` | 
| **`virtualNetwork`** | `vnet` | `vnet-myapp-dev` | `vnet-myapp-dev-cv7z` | 
| **`virtualNetworkGateway`** | `vgw` | `vgw-myapp-dev` | `vgw-myapp-dev-cv7z` | 
| **`virtualNetworkPeering`** | `vpeer` | `vpeer-myapp-dev` | `vpeer-myapp-dev-cv7z` | 
| **`virtualWan`** | `vwan` | `vwan-myapp-dev` | `vwan-myapp-dev-cv7z` | 
[Go to top](#reference)

## <a name="ref-w"></a>W
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`windowsVirtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-cv` | 
| **`windowsVirtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-` | 
[Go to top](#reference)


## License

Azure naming for Bicep/ARM is licensed under the [MIT](LICENSE) license.