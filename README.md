# Bicep Azure Naming module

[![bicep-CI](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml/badge.svg)](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml)

Bicep and ARM template module for keeping a consistent Azure resources naming convention. Inspired and based on the nice [Terraform module/implementation](https://github.com/Azure/terraform-azurerm-naming). 

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
| **`analysisServicesServer`** | `as` | `asmyappdev` | `asmyappdeve7hg` | 
| **`apiManagement`** | `apim` | `apimmyappdev` | `apimmyappdeve7hg` | 
| **`appConfiguration`** | `appcg` | `appcg-myapp-dev` | `appcg-myapp-dev-e7hg` | 
| **`appService`** | `app` | `app-myapp-dev` | `app-myapp-dev-e7hg` | 
| **`appServicePlan`** | `plan` | `plan-myapp-dev` | `plan-myapp-dev-e7hg` | 
| **`applicationGateway`** | `agw` | `agw-myapp-dev` | `agw-myapp-dev-e7hg` | 
| **`applicationInsights`** | `appi` | `appi-myapp-dev` | `appi-myapp-dev-e7hg` | 
| **`applicationSecurityGroup`** | `asg` | `asg-myapp-dev` | `asg-myapp-dev-e7hg` | 
| **`automationAccount`** | `aa` | `aa-myapp-dev` | `aa-myapp-dev-e7hg` | 
| **`automationCertificate`** | `aacert` | `aacert-myapp-dev` | `aacert-myapp-dev-e7hg` | 
| **`automationCredential`** | `aacred` | `aacred-myapp-dev` | `aacred-myapp-dev-e7hg` | 
| **`automationRunbook`** | `aacred` | `aacred-myapp-dev` | `aacred-myapp-dev-e7hg` | 
| **`automationSchedule`** | `aasched` | `aasched-myapp-dev` | `aasched-myapp-dev-e7hg` | 
| **`automationVariable`** | `aavar` | `aavar-myapp-dev` | `aavar-myapp-dev-e7hg` | 
| **`availabilitySet`** | `avail` | `avail-myapp-dev` | `avail-myapp-dev-e7hg` | 
| **`azureFirewall`** | `afw` | `afw-myapp-dev` | `afw-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-b"></a>B
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`bastionHost`** | `snap` | `snap-myapp-dev` | `snap-myapp-dev-e7hg` | 
| **`batchAccount`** | `ba` | `bamyappdev` | `bamyappdeve7hg` | 
| **`batchApplication`** | `baapp` | `baapp-myapp-dev` | `baapp-myapp-dev-e7hg` | 
| **`batchCertificate`** | `bacert` | `bacert-myapp-dev` | `bacert-myapp-dev-e7hg` | 
| **`batchPool`** | `bapool` | `bapool-myapp-dev` | `bapool-myapp-dev-e7hg` | 
| **`botChannelDirectline`** | `botline` | `botline-myapp-dev` | `botline-myapp-dev-e7hg` | 
| **`botChannelEmail`** | `botmail` | `botmail-myapp-dev` | `botmail-myapp-dev-e7hg` | 
| **`botChannelMsTeams`** | `botteams` | `botteams-myapp-dev` | `botteams-myapp-dev-e7hg` | 
| **`botChannelSlack`** | `botslack` | `botslack-myapp-dev` | `botslack-myapp-dev-e7hg` | 
| **`botChannelsRegistration`** | `botchan` | `botchan-myapp-dev` | `botchan-myapp-dev-e7hg` | 
| **`botConnection`** | `botcon` | `botcon-myapp-dev` | `botcon-myapp-dev-e7hg` | 
| **`botWebApp`** | `bot` | `bot-myapp-dev` | `bot-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-c"></a>C
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`cdnEndpoint`** | `cdn` | `cdn-myapp-dev` | `cdn-myapp-dev-e7hg` | 
| **`cdnProfile`** | `cdnprof` | `cdnprof-myapp-dev` | `cdnprof-myapp-dev-e7hg` | 
| **`cognitiveAccount`** | `cog` | `cog-myapp-dev` | `cog-myapp-dev-e7hg` | 
| **`containerGroup`** | `cg` | `cg-myapp-dev` | `cg-myapp-dev-e7hg` | 
| **`containerRegistry`** | `acr` | `acrmyappdev` | `acrmyappdeve7hg` | 
| **`containerRegistryWebhook`** | `crwh` | `crwhmyappdev` | `crwhmyappdeve7hg` | 
| **`cosmosdbAccount`** | `cosmos` | `cosmos-myapp-dev` | `cosmos-myapp-dev-e7hg` | 
| **`customProvider`** | `prov` | `prov-myapp-dev` | `prov-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-d"></a>D
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`dashboard`** | `dsb` | `dsb-myapp-dev` | `dsb-myapp-dev-e7hg` | 
| **`dataFactory`** | `adf` | `adf-myapp-dev` | `adf-myapp-dev-e7hg` | 
| **`dataFactoryDatasetMysql`** | `adfmysql` | `adfmysql-myapp-dev` | `adfmysql-myapp-dev-e7hg` | 
| **`dataFactoryDatasetPostgresql`** | `adfpsql` | `adfpsql-myapp-dev` | `adfpsql-myapp-dev-e7hg` | 
| **`dataFactoryDatasetSqlServerTable`** | `adfmssql` | `adfmssql-myapp-dev` | `adfmssql-myapp-dev-e7hg` | 
| **`dataFactoryIntegrationRuntimeManaged`** | `adfir` | `adfir-myapp-dev` | `adfir-myapp-dev-e7hg` | 
| **`dataFactoryLinkedServiceDataLakeStorageGen2`** | `adfsvst` | `adfsvst-myapp-dev` | `adfsvst-myapp-dev-e7hg` | 
| **`dataFactoryLinkedServiceKeyVault`** | `adfsvkv` | `adfsvkv-myapp-dev` | `adfsvkv-myapp-dev-e7hg` | 
| **`dataFactoryLinkedServiceMysql`** | `adfsvmysql` | `adfsvmysql-myapp-dev` | `adfsvmysql-myapp-dev-e7hg` | 
| **`dataFactoryLinkedServicePostgresql`** | `adfsvpsql` | `adfsvpsql-myapp-dev` | `adfsvpsql-myapp-dev-e7hg` | 
| **`dataFactoryLinkedServiceSqlServer`** | `adfsvmssql` | `adfsvmssql-myapp-dev` | `adfsvmssql-myapp-dev-e7hg` | 
| **`dataFactoryPipeline`** | `adfpl` | `adfpl-myapp-dev` | `adfpl-myapp-dev-e7hg` | 
| **`dataFactoryTriggerSchedule`** | `adftg` | `adftg-myapp-dev` | `adftg-myapp-dev-e7hg` | 
| **`dataLakeAnalyticsAccount`** | `dla` | `dlamyappdev` | `dlamyappdeve7hg` | 
| **`dataLakeAnalyticsFirewallRule`** | `dlfw` | `dlfw-myapp-dev` | `dlfw-myapp-dev-e7hg` | 
| **`dataLakeStore`** | `dls` | `dlsmyappdev` | `dlsmyappdeve7hg` | 
| **`dataLakeStoreFirewallRule`** | `dlsfw` | `dlsfw-myapp-dev` | `dlsfw-myapp-dev-e7hg` | 
| **`databaseMigrationProject`** | `migr` | `migr-myapp-dev` | `migr-myapp-dev-e7hg` | 
| **`databaseMigrationService`** | `dms` | `dms-myapp-dev` | `dms-myapp-dev-e7hg` | 
| **`databricksWorkspace`** | `dbw` | `dbw-myapp-dev` | `dbw-myapp-dev-e7hg` | 
| **`devTestLab`** | `lab` | `lab-myapp-dev` | `lab-myapp-dev-e7hg` | 
| **`devTestLinuxVirtualMachine`** | `labvm` | `labvm-myapp-dev` | `labvm-myapp-dev-e7hg` | 
| **`devTestWindowsVirtualMachine`** | `labvm` | `labvm-myapp-dev` | `labvm-myapp-dev` | 
| **`diskEncryptionSet`** | `des` | `des-myapp-dev` | `des-myapp-dev-e7hg` | 
| **`dnsZone`** | `dns` | `dns-myapp-dev` | `dns-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-e"></a>E
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`eventGridDomain`** | `egd` | `egd-myapp-dev` | `egd-myapp-dev-e7hg` | 
| **`eventGridDomainTopic`** | `egdt` | `egdt-myapp-dev` | `egdt-myapp-dev-e7hg` | 
| **`eventGridEventSubscription`** | `egs` | `egs-myapp-dev` | `egs-myapp-dev-e7hg` | 
| **`eventGridTopic`** | `egt` | `egt-myapp-dev` | `egt-myapp-dev-e7hg` | 
| **`eventHub`** | `evh` | `evh-myapp-dev` | `evh-myapp-dev-e7hg` | 
| **`eventHubAuthorizationRule`** | `ehar` | `ehar-myapp-dev` | `ehar-myapp-dev-e7hg` | 
| **`eventHubConsumerGroup`** | `ehcg` | `ehcg-myapp-dev` | `ehcg-myapp-dev-e7hg` | 
| **`eventHubNamespace`** | `ehn` | `ehn-myapp-dev` | `ehn-myapp-dev-e7hg` | 
| **`eventHubNamespaceAuthorizationRule`** | `ehnar` | `ehnar-myapp-dev` | `ehnar-myapp-dev-e7hg` | 
| **`eventHubNamespaceDisasterRecoveryConfig`** | `ehdr` | `ehdr-myapp-dev` | `ehdr-myapp-dev-e7hg` | 
| **`expressRouteCircuit`** | `erc` | `erc-myapp-dev` | `erc-myapp-dev-e7hg` | 
| **`expressRouteGateway`** | `ergw` | `ergw-myapp-dev` | `ergw-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-f"></a>F
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`firewall`** | `fw` | `fw-myapp-dev` | `fw-myapp-dev-e7hg` | 
| **`firewallPolicy`** | `afwp` | `afwp-myapp-dev` | `afwp-myapp-dev-e7hg` | 
| **`frontDoor`** | `fd` | `fd-myapp-dev` | `fd-myapp-dev-e7hg` | 
| **`frontDoorFirewallPolicy`** | `fdfw` | `fdfw-myapp-dev` | `fdfw-myapp-dev-e7hg` | 
| **`functionApp`** | `func` | `func-myapp-dev` | `func-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-h"></a>H
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`hdInsightHadoopCluster`** | `hadoop` | `hadoop-myapp-dev` | `hadoop-myapp-dev-e7hg` | 
| **`hdInsightHbaseCluster`** | `hbase` | `hbase-myapp-dev` | `hbase-myapp-dev-e7hg` | 
| **`hdInsightInteractiveQueryCluster`** | `iqr` | `iqr-myapp-dev` | `iqr-myapp-dev-e7hg` | 
| **`hdInsightKafkaCluster`** | `kafka` | `kafka-myapp-dev` | `kafka-myapp-dev-e7hg` | 
| **`hdInsightMlServicesCluster`** | `mls` | `mls-myapp-dev` | `mls-myapp-dev-e7hg` | 
| **`hdInsightRserverCluster`** | `rsv` | `rsv-myapp-dev` | `rsv-myapp-dev-e7hg` | 
| **`hdInsightSparkCluster`** | `spark` | `spark-myapp-dev` | `spark-myapp-dev-e7hg` | 
| **`hdInsightStormCluster`** | `storm` | `storm-myapp-dev` | `storm-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-i"></a>I
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`image`** | `img` | `img-myapp-dev` | `img-myapp-dev-e7hg` | 
| **`iotCentralApplication`** | `iotapp` | `iotapp-myapp-dev` | `iotapp-myapp-dev-e7hg` | 
| **`iotHub`** | `iot` | `iot-myapp-dev` | `iot-myapp-dev-e7hg` | 
| **`iotHubConsumerGroup`** | `iotcg` | `iotcg-myapp-dev` | `iotcg-myapp-dev-e7hg` | 
| **`iotHubDps`** | `dps` | `dps-myapp-dev` | `dps-myapp-dev-e7hg` | 
| **`iotHubDpsCertificate`** | `dpscert` | `dpscert-myapp-dev` | `dpscert-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-k"></a>K
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`keyVault`** | `kv` | `kv-myapp-dev` | `kv-myapp-dev-e7hg` | 
| **`keyVaultCertificate`** | `kvc` | `kvc-myapp-dev` | `kvc-myapp-dev-e7hg` | 
| **`keyVaultKey`** | `kvk` | `kvk-myapp-dev` | `kvk-myapp-dev-e7hg` | 
| **`keyVaultSecret`** | `kvs` | `kvs-myapp-dev` | `kvs-myapp-dev-e7hg` | 
| **`kubernetesCluster`** | `aks` | `aks-myapp-dev` | `aks-myapp-dev-e7hg` | 
| **`kustoCluster`** | `kc` | `kcmyappdev` | `kcmyappdeve7hg` | 
| **`kustoDatabase`** | `kdb` | `kdb-myapp-dev` | `kdb-myapp-dev-e7hg` | 
| **`kustoEventHubDataConnection`** | `kehc` | `kehc-myapp-dev` | `kehc-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-l"></a>L
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`linuxVirtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-e7hg` | 
| **`linuxVirtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-e7hg` | 
| **`loadBalancer`** | `lb` | `lb-myapp-dev` | `lb-myapp-dev-e7hg` | 
| **`loadBalancerNatRule`** | `lbnatrl` | `lbnatrl-myapp-dev` | `lbnatrl-myapp-dev-e7hg` | 
| **`localNetworkGateway`** | `lgw` | `lgw-myapp-dev` | `lgw-myapp-dev-e7hg` | 
| **`logAnalyticsWorkspace`** | `log` | `log-myapp-dev` | `log-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-m"></a>M
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`machineLearningWorkspace`** | `mlw` | `mlw-myapp-dev` | `mlw-myapp-dev-e7hg` | 
| **`managedDisk`** | `dsk` | `dsk-myapp-dev` | `dsk-myapp-dev-e7hg` | 
| **`mapsAccount`** | `map` | `map-myapp-dev` | `map-myapp-dev-e7hg` | 
| **`mariadbDatabase`** | `mariadb` | `mariadb-myapp-dev` | `mariadb-myapp-dev-e7hg` | 
| **`mariadbFirewallRule`** | `mariafw` | `mariafw-myapp-dev` | `mariafw-myapp-dev-e7hg` | 
| **`mariadbServer`** | `maria` | `maria-myapp-dev` | `maria-myapp-dev-e7hg` | 
| **`mariadbVirtualNetworkRule`** | `mariavn` | `mariavn-myapp-dev` | `mariavn-myapp-dev-e7hg` | 
| **`mssqlDatabase`** | `sqldb` | `sqldb-myapp-dev` | `sqldb-myapp-dev-e7hg` | 
| **`mssqlElasticpool`** | `sqlep` | `sqlep-myapp-dev` | `sqlep-myapp-dev-e7hg` | 
| **`mssqlServer`** | `sql` | `sql-myapp-dev` | `sql-myapp-dev-e7hg` | 
| **`mysqlDatabase`** | `mysqldb` | `mysqldb-myapp-dev` | `mysqldb-myapp-dev-e7hg` | 
| **`mysqlFirewallRule`** | `mysqlfw` | `mysqlfw-myapp-dev` | `mysqlfw-myapp-dev-e7hg` | 
| **`mysqlServer`** | `mysql` | `mysql-myapp-dev` | `mysql-myapp-dev-e7hg` | 
| **`mysqlVirtualNetworkRule`** | `mysqlvn` | `mysqlvn-myapp-dev` | `mysqlvn-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-n"></a>N
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`networkInterface`** | `nic` | `nic-myapp-dev` | `nic-myapp-dev-e7hg` | 
| **`networkSecurityGroup`** | `nsg` | `nsg-myapp-dev` | `nsg-myapp-dev-e7hg` | 
| **`networkSecurityGroupRule`** | `nsgr` | `nsgr-myapp-dev` | `nsgr-myapp-dev-e7hg` | 
| **`networkSecurityRule`** | `nsgr` | `nsgr-myapp-dev` | `nsgr-myapp-dev-e7hg` | 
| **`networkWatcher`** | `nw` | `nw-myapp-dev` | `nw-myapp-dev-e7hg` | 
| **`notificationHub`** | `nh` | `nh-myapp-dev` | `nh-myapp-dev-e7hg` | 
| **`notificationHubAuthorizationRule`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-e7hg` | 
| **`notificationHubNamespace`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-p"></a>P
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`pointToSiteVpnGateway`** | `vpngw` | `vpngw-myapp-dev` | `vpngw-myapp-dev-e7hg` | 
| **`postgresqlDatabase`** | `psqldb` | `psqldb-myapp-dev` | `psqldb-myapp-dev-e7hg` | 
| **`postgresqlFirewallRule`** | `psqlfw` | `psqlfw-myapp-dev` | `psqlfw-myapp-dev-e7hg` | 
| **`postgresqlServer`** | `psql` | `psql-myapp-dev` | `psql-myapp-dev-e7hg` | 
| **`postgresqlVirtualNetworkRule`** | `psqlvn` | `psqlvn-myapp-dev` | `psqlvn-myapp-dev-e7hg` | 
| **`powerbiEmbedded`** | `pbi` | `pbi-myapp-dev` | `pbi-myapp-dev-e7hg` | 
| **`privateDnsZone`** | `pdns` | `pdns-myapp-dev` | `pdns-myapp-dev-e7hg` | 
| **`publicIp`** | `pip` | `pip-myapp-dev` | `pip-myapp-dev-e7hg` | 
| **`publicIpPrefix`** | `pippf` | `pippf-myapp-dev` | `pippf-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-r"></a>R
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`redisCache`** | `redis` | `redis-myapp-dev` | `redis-myapp-dev-e7hg` | 
| **`redisFirewallRule`** | `redisfw` | `redisfwmyappdev` | `redisfwmyappdeve7hg` | 
| **`relayHybridConnection`** | `rlhc` | `rlhc-myapp-dev` | `rlhc-myapp-dev-e7hg` | 
| **`relayNamespace`** | `rln` | `rln-myapp-dev` | `rln-myapp-dev-e7hg` | 
| **`resourceGroup`** | `rg` | `rg-myapp-dev` | `rg-myapp-dev-e7hg` | 
| **`roleAssignment`** | `ra` | `ra-myapp-dev` | `ra-myapp-dev-e7hg` | 
| **`roleDefinition`** | `rd` | `rd-myapp-dev` | `rd-myapp-dev-e7hg` | 
| **`route`** | `rt` | `rt-myapp-dev` | `rt-myapp-dev-e7hg` | 
| **`routeTable`** | `route` | `route-myapp-dev` | `route-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-s"></a>S
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`serviceBusNamespace`** | `sb` | `sb-myapp-dev` | `sb-myapp-dev-e7hg` | 
| **`serviceBusNamespaceAuthorizationRule`** | `sbar` | `sbar-myapp-dev` | `sbar-myapp-dev-e7hg` | 
| **`serviceBusQueue`** | `sbq` | `sbq-myapp-dev` | `sbq-myapp-dev-e7hg` | 
| **`serviceBusQueueAuthorizationRule`** | `sbqar` | `sbqar-myapp-dev` | `sbqar-myapp-dev-e7hg` | 
| **`serviceBusSubscription`** | `sbs` | `sbs-myapp-dev` | `sbs-myapp-dev-e7hg` | 
| **`serviceBusSubscriptionRule`** | `sbsr` | `sbsr-myapp-dev` | `sbsr-myapp-dev-e7hg` | 
| **`serviceBusTopic`** | `sbt` | `sbt-myapp-dev` | `sbt-myapp-dev-e7hg` | 
| **`serviceBusTopicAuthorizationRule`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-e7hg` | 
| **`serviceFabricCluster`** | `sf` | `sf-myapp-dev` | `sf-myapp-dev-e7hg` | 
| **`sharedImage`** | `si` | `si-myapp-dev` | `si-myapp-dev-e7hg` | 
| **`sharedImageGallery`** | `sig` | `sigmyappdev` | `sigmyappdeve7hg` | 
| **`signalrService`** | `sgnlr` | `sgnlr-myapp-dev` | `sgnlr-myapp-dev-e7hg` | 
| **`snapshots`** | `snap` | `snap-myapp-dev` | `snap-myapp-dev-e7hg` | 
| **`sqlElasticpool`** | `sqlep` | `sqlep-myapp-dev` | `sqlep-myapp-dev-e7hg` | 
| **`sqlFailoverGroup`** | `sqlfg` | `sqlfg-myapp-dev` | `sqlfg-myapp-dev-e7hg` | 
| **`sqlFirewallRule`** | `sqlfw` | `sqlfw-myapp-dev` | `sqlfw-myapp-dev-e7hg` | 
| **`sqlServer`** | `sql` | `sql-myapp-dev` | `sql-myapp-dev-e7hg` | 
| **`storageAccount`** | `st` | `stmyappdev` | `stmyappdeve7hg` | 
| **`storageBlob`** | `blob` | `blob-myapp-dev` | `blob-myapp-dev-e7hg` | 
| **`storageContainer`** | `stct` | `stct-myapp-dev` | `stct-myapp-dev-e7hg` | 
| **`storageDataLakeGen2Filesystem`** | `stdl` | `stdl-myapp-dev` | `stdl-myapp-dev-e7hg` | 
| **`storageQueue`** | `stq` | `stq-myapp-dev` | `stq-myapp-dev-e7hg` | 
| **`storageShare`** | `sts` | `sts-myapp-dev` | `sts-myapp-dev-e7hg` | 
| **`storageShareDirectory`** | `sts` | `sts-myapp-dev` | `sts-myapp-dev-e7hg` | 
| **`storageTable`** | `stt` | `stt-myapp-dev` | `stt-myapp-dev-e7hg` | 
| **`streamAnalyticsFunctionJavascriptUdf`** | `asafunc` | `asafunc-myapp-dev` | `asafunc-myapp-dev-e7hg` | 
| **`streamAnalyticsJob`** | `asa` | `asa-myapp-dev` | `asa-myapp-dev-e7hg` | 
| **`streamAnalyticsOutputBlob`** | `asaoblob` | `asaoblob-myapp-dev` | `asaoblob-myapp-dev-e7hg` | 
| **`streamAnalyticsOutputEventHub`** | `asaoeh` | `asaoeh-myapp-dev` | `asaoeh-myapp-dev-e7hg` | 
| **`streamAnalyticsOutputMssql`** | `asaomssql` | `asaomssql-myapp-dev` | `asaomssql-myapp-dev-e7hg` | 
| **`streamAnalyticsOutputServiceBusQueue`** | `asaosbq` | `asaosbq-myapp-dev` | `asaosbq-myapp-dev-e7hg` | 
| **`streamAnalyticsOutputServiceBusTopic`** | `asaosbt` | `asaosbt-myapp-dev` | `asaosbt-myapp-dev-e7hg` | 
| **`streamAnalyticsReferenceInputBlob`** | `asarblob` | `asarblob-myapp-dev` | `asarblob-myapp-dev-e7hg` | 
| **`streamAnalyticsStreamInputBlob`** | `asaiblob` | `asaiblob-myapp-dev` | `asaiblob-myapp-dev-e7hg` | 
| **`streamAnalyticsStreamInputEventHub`** | `asaieh` | `asaieh-myapp-dev` | `asaieh-myapp-dev-e7hg` | 
| **`streamAnalyticsStreamInputIotHub`** | `asaiiot` | `asaiiot-myapp-dev` | `asaiiot-myapp-dev-e7hg` | 
| **`subnet`** | `snet` | `snet-myapp-dev` | `snet-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-t"></a>T
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`templateDeployment`** | `deploy` | `deploy-myapp-dev` | `deploy-myapp-dev-e7hg` | 
| **`trafficManagerProfile`** | `traf` | `traf-myapp-dev` | `traf-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-v"></a>V
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`virtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-e7` | 
| **`virtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-` | 
| **`virtualNetwork`** | `vnet` | `vnet-myapp-dev` | `vnet-myapp-dev-e7hg` | 
| **`virtualNetworkGateway`** | `vgw` | `vgw-myapp-dev` | `vgw-myapp-dev-e7hg` | 
| **`virtualNetworkPeering`** | `vpeer` | `vpeer-myapp-dev` | `vpeer-myapp-dev-e7hg` | 
| **`virtualWan`** | `vwan` | `vwan-myapp-dev` | `vwan-myapp-dev-e7hg` | 
[Go to top](#reference)

## <a name="ref-w"></a>W
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`windowsVirtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-e7` | 
| **`windowsVirtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-` | 
[Go to top](#reference)


## License

Azure naming for Bicep/ARM is licensed under the [MIT](LICENSE) license.