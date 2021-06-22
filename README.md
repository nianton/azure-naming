# Bicep Azure Naming module

[![bicep-CI](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml/badge.svg)](https://github.com/nianton/azure-naming/actions/workflows/bicep-CI.yml)

Bicep and ARM template module for keeping a consistent Azure resources naming convention. Inspired and based on the nice Terraform implementation: https://github.com/Azure/terraform-azurerm-naming

## How to use / Getting started

A template sample repository was created to showcase how to use this module (**https://github.com/nianton/bicep-starter**), and you will also find an example in the **`/examples`** folder, with the **`example.sub.bicep`** demonstrating how to use this module to facilitate naming resources on Azure.

## <a name="reference"></a>Reference

### Input Parameters

| Parameter name | Description | Type | Default value |
| -------- | ---------- | ----------- | ----------- |
| **suffix** | Array of suffix parts to be included in the naming | array(string) | [] |
| **prefix** | Array of prefix parts to be included in the naming  | array(string) | [] |
| **uniqueSeed** | The string be used as the seed for | string | resourceGroup().id |
| **uniqueLength** | The number of characters in the unique part | int | 6 |
| **useDashes** | Whether to use dash (-) as delimiter | bool | true |
| **useLowerCase** | Whether to use lower case letters | bool | true |


## Module `names` object output properties

Below is a reference of the output `names` object values with the following sample input:

```bicep
suffix = [
  'myapp'
  'dev'
]

uniqueLength = 6
```

### Index: [A](#ref-a) - [B](#ref-b) - [C](#ref-c) - [D](#ref-d) - [E](#ref-e) - [F](#ref-f) - [H](#ref-h) - [I](#ref-i) - [K](#ref-k) - [L](#ref-l) - [M](#ref-m) - [N](#ref-n) - [P](#ref-p) - [R](#ref-r) - [S](#ref-s) - [T](#ref-t) - [V](#ref-v) - [W](#ref-w)

## <a name="ref-a"></a>A
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`analysisServicesServer`** | `as` | `asmyappdev` | `asmyappdeve7hgy3` | 
| **`apiManagement`** | `apim` | `apimmyappdev` | `apimmyappdeve7hgy3` | 
| **`appConfiguration`** | `appcg` | `appcg-myapp-dev` | `appcg-myapp-dev-e7hgy3` | 
| **`appService`** | `app` | `app-myapp-dev` | `app-myapp-dev-e7hgy3` | 
| **`appServicePlan`** | `plan` | `plan-myapp-dev` | `plan-myapp-dev-e7hgy3` | 
| **`applicationGateway`** | `agw` | `agw-myapp-dev` | `agw-myapp-dev-e7hgy3` | 
| **`applicationInsights`** | `appi` | `appi-myapp-dev` | `appi-myapp-dev-e7hgy3` | 
| **`applicationSecurityGroup`** | `asg` | `asg-myapp-dev` | `asg-myapp-dev-e7hgy3` | 
| **`automationAccount`** | `aa` | `aa-myapp-dev` | `aa-myapp-dev-e7hgy3` | 
| **`automationCertificate`** | `aacert` | `aacert-myapp-dev` | `aacert-myapp-dev-e7hgy3` | 
| **`automationCredential`** | `aacred` | `aacred-myapp-dev` | `aacred-myapp-dev-e7hgy3` | 
| **`automationRunbook`** | `aacred` | `aacred-myapp-dev` | `aacred-myapp-dev-e7hgy3` | 
| **`automationSchedule`** | `aasched` | `aasched-myapp-dev` | `aasched-myapp-dev-e7hgy3` | 
| **`automationVariable`** | `aavar` | `aavar-myapp-dev` | `aavar-myapp-dev-e7hgy3` | 
| **`availabilitySet`** | `avail` | `avail-myapp-dev` | `avail-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-b"></a>B
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`bastionHost`** | `snap` | `snap-myapp-dev` | `snap-myapp-dev-e7hgy3` | 
| **`batchAccount`** | `ba` | `bamyappdev` | `bamyappdeve7hgy3` | 
| **`batchApplication`** | `baapp` | `baapp-myapp-dev` | `baapp-myapp-dev-e7hgy3` | 
| **`batchCertificate`** | `bacert` | `bacert-myapp-dev` | `bacert-myapp-dev-e7hgy3` | 
| **`batchPool`** | `bapool` | `bapool-myapp-dev` | `bapool-myapp-dev-e7hgy3` | 
| **`botChannelDirectline`** | `botline` | `botline-myapp-dev` | `botline-myapp-dev-e7hgy3` | 
| **`botChannelEmail`** | `botmail` | `botmail-myapp-dev` | `botmail-myapp-dev-e7hgy3` | 
| **`botChannelMsTeams`** | `botteams` | `botteams-myapp-dev` | `botteams-myapp-dev-e7hgy3` | 
| **`botChannelSlack`** | `botslack` | `botslack-myapp-dev` | `botslack-myapp-dev-e7hgy3` | 
| **`botChannelsRegistration`** | `botchan` | `botchan-myapp-dev` | `botchan-myapp-dev-e7hgy3` | 
| **`botConnection`** | `botcon` | `botcon-myapp-dev` | `botcon-myapp-dev-e7hgy3` | 
| **`botWebApp`** | `bot` | `bot-myapp-dev` | `bot-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-c"></a>C
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`cdnEndpoint`** | `cdn` | `cdn-myapp-dev` | `cdn-myapp-dev-e7hgy3` | 
| **`cdnProfile`** | `cdnprof` | `cdnprof-myapp-dev` | `cdnprof-myapp-dev-e7hgy3` | 
| **`cognitiveAccount`** | `cog` | `cog-myapp-dev` | `cog-myapp-dev-e7hgy3` | 
| **`containerGroup`** | `cg` | `cg-myapp-dev` | `cg-myapp-dev-e7hgy3` | 
| **`containerRegistry`** | `acr` | `acrmyappdev` | `acrmyappdeve7hgy3` | 
| **`containerRegistryWebhook`** | `crwh` | `crwhmyappdev` | `crwhmyappdeve7hgy3` | 
| **`cosmosdbAccount`** | `cosmos` | `cosmos-myapp-dev` | `cosmos-myapp-dev-e7hgy3` | 
| **`customProvider`** | `prov` | `prov-myapp-dev` | `prov-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-d"></a>D
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`dashboard`** | `dsb` | `dsb-myapp-dev` | `dsb-myapp-dev-e7hgy3` | 
| **`dataFactory`** | `adf` | `adf-myapp-dev` | `adf-myapp-dev-e7hgy3` | 
| **`dataFactoryDatasetMysql`** | `adfmysql` | `adfmysql-myapp-dev` | `adfmysql-myapp-dev-e7hgy3` | 
| **`dataFactoryDatasetPostgresql`** | `adfpsql` | `adfpsql-myapp-dev` | `adfpsql-myapp-dev-e7hgy3` | 
| **`dataFactoryDatasetSqlServerTable`** | `adfmssql` | `adfmssql-myapp-dev` | `adfmssql-myapp-dev-e7hgy3` | 
| **`dataFactoryIntegrationRuntimeManaged`** | `adfir` | `adfir-myapp-dev` | `adfir-myapp-dev-e7hgy3` | 
| **`dataFactoryLinkedServiceDataLakeStorageGen2`** | `adfsvst` | `adfsvst-myapp-dev` | `adfsvst-myapp-dev-e7hgy3` | 
| **`dataFactoryLinkedServiceKeyVault`** | `adfsvkv` | `adfsvkv-myapp-dev` | `adfsvkv-myapp-dev-e7hgy3` | 
| **`dataFactoryLinkedServiceMysql`** | `adfsvmysql` | `adfsvmysql-myapp-dev` | `adfsvmysql-myapp-dev-e7hgy3` | 
| **`dataFactoryLinkedServicePostgresql`** | `adfsvpsql` | `adfsvpsql-myapp-dev` | `adfsvpsql-myapp-dev-e7hgy3` | 
| **`dataFactoryLinkedServiceSqlServer`** | `adfsvmssql` | `adfsvmssql-myapp-dev` | `adfsvmssql-myapp-dev-e7hgy3` | 
| **`dataFactoryPipeline`** | `adfpl` | `adfpl-myapp-dev` | `adfpl-myapp-dev-e7hgy3` | 
| **`dataFactoryTriggerSchedule`** | `adftg` | `adftg-myapp-dev` | `adftg-myapp-dev-e7hgy3` | 
| **`dataLakeAnalyticsAccount`** | `dla` | `dlamyappdev` | `dlamyappdeve7hgy3` | 
| **`dataLakeAnalyticsFirewallRule`** | `dlfw` | `dlfw-myapp-dev` | `dlfw-myapp-dev-e7hgy3` | 
| **`dataLakeStore`** | `dls` | `dlsmyappdev` | `dlsmyappdeve7hgy3` | 
| **`dataLakeStoreFirewallRule`** | `dlsfw` | `dlsfw-myapp-dev` | `dlsfw-myapp-dev-e7hgy3` | 
| **`databaseMigrationProject`** | `migr` | `migr-myapp-dev` | `migr-myapp-dev-e7hgy3` | 
| **`databaseMigrationService`** | `dms` | `dms-myapp-dev` | `dms-myapp-dev-e7hgy3` | 
| **`databricksWorkspace`** | `dbw` | `dbw-myapp-dev` | `dbw-myapp-dev-e7hgy3` | 
| **`devTestLab`** | `lab` | `lab-myapp-dev` | `lab-myapp-dev-e7hgy3` | 
| **`devTestLinuxVirtualMachine`** | `labvm` | `labvm-myapp-dev` | `labvm-myapp-dev-e7hgy3` | 
| **`devTestWindowsVirtualMachine`** | `labvm` | `labvm-myapp-dev` | `labvm-myapp-dev` | 
| **`diskEncryptionSet`** | `des` | `des-myapp-dev` | `des-myapp-dev-e7hgy3` | 
| **`dnsZone`** | `dns` | `dns-myapp-dev` | `dns-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-e"></a>E
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`eventGridDomain`** | `egd` | `egd-myapp-dev` | `egd-myapp-dev-e7hgy3` | 
| **`eventGridDomainTopic`** | `egdt` | `egdt-myapp-dev` | `egdt-myapp-dev-e7hgy3` | 
| **`eventGridEventSubscription`** | `egs` | `egs-myapp-dev` | `egs-myapp-dev-e7hgy3` | 
| **`eventGridTopic`** | `egt` | `egt-myapp-dev` | `egt-myapp-dev-e7hgy3` | 
| **`eventHub`** | `evh` | `evh-myapp-dev` | `evh-myapp-dev-e7hgy3` | 
| **`eventHubAuthorizationRule`** | `ehar` | `ehar-myapp-dev` | `ehar-myapp-dev-e7hgy3` | 
| **`eventHubConsumerGroup`** | `ehcg` | `ehcg-myapp-dev` | `ehcg-myapp-dev-e7hgy3` | 
| **`eventHubNamespace`** | `ehn` | `ehn-myapp-dev` | `ehn-myapp-dev-e7hgy3` | 
| **`eventHubNamespaceAuthorizationRule`** | `ehnar` | `ehnar-myapp-dev` | `ehnar-myapp-dev-e7hgy3` | 
| **`eventHubNamespaceDisasterRecoveryConfig`** | `ehdr` | `ehdr-myapp-dev` | `ehdr-myapp-dev-e7hgy3` | 
| **`expressRouteCircuit`** | `erc` | `erc-myapp-dev` | `erc-myapp-dev-e7hgy3` | 
| **`expressRouteGateway`** | `ergw` | `ergw-myapp-dev` | `ergw-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-f"></a>F
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`firewall`** | `fw` | `fw-myapp-dev` | `fw-myapp-dev-e7hgy3` | 
| **`frontDoor`** | `fd` | `fd-myapp-dev` | `fd-myapp-dev-e7hgy3` | 
| **`frontDoorFirewallPolicy`** | `fdfw` | `fdfw-myapp-dev` | `fdfw-myapp-dev-e7hgy3` | 
| **`functionApp`** | `func` | `func-myapp-dev` | `func-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-h"></a>H
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`hdInsightHadoopCluster`** | `hadoop` | `hadoop-myapp-dev` | `hadoop-myapp-dev-e7hgy3` | 
| **`hdInsightHbaseCluster`** | `hbase` | `hbase-myapp-dev` | `hbase-myapp-dev-e7hgy3` | 
| **`hdInsightInteractiveQueryCluster`** | `iqr` | `iqr-myapp-dev` | `iqr-myapp-dev-e7hgy3` | 
| **`hdInsightKafkaCluster`** | `kafka` | `kafka-myapp-dev` | `kafka-myapp-dev-e7hgy3` | 
| **`hdInsightMlServicesCluster`** | `mls` | `mls-myapp-dev` | `mls-myapp-dev-e7hgy3` | 
| **`hdInsightRserverCluster`** | `rsv` | `rsv-myapp-dev` | `rsv-myapp-dev-e7hgy3` | 
| **`hdInsightSparkCluster`** | `spark` | `spark-myapp-dev` | `spark-myapp-dev-e7hgy3` | 
| **`hdInsightStormCluster`** | `storm` | `storm-myapp-dev` | `storm-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-i"></a>I
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`image`** | `img` | `img-myapp-dev` | `img-myapp-dev-e7hgy3` | 
| **`iotCentralApplication`** | `iotapp` | `iotapp-myapp-dev` | `iotapp-myapp-dev-e7hgy3` | 
| **`iotHub`** | `iot` | `iot-myapp-dev` | `iot-myapp-dev-e7hgy3` | 
| **`iotHubConsumerGroup`** | `iotcg` | `iotcg-myapp-dev` | `iotcg-myapp-dev-e7hgy3` | 
| **`iotHubDps`** | `dps` | `dps-myapp-dev` | `dps-myapp-dev-e7hgy3` | 
| **`iotHubDpsCertificate`** | `dpscert` | `dpscert-myapp-dev` | `dpscert-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-k"></a>K
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`keyVault`** | `kv` | `kv-myapp-dev` | `kv-myapp-dev-e7hgy3` | 
| **`keyVaultCertificate`** | `kvc` | `kvc-myapp-dev` | `kvc-myapp-dev-e7hgy3` | 
| **`keyVaultKey`** | `kvk` | `kvk-myapp-dev` | `kvk-myapp-dev-e7hgy3` | 
| **`keyVaultSecret`** | `kvs` | `kvs-myapp-dev` | `kvs-myapp-dev-e7hgy3` | 
| **`kubernetesCluster`** | `aks` | `aks-myapp-dev` | `aks-myapp-dev-e7hgy3` | 
| **`kustoCluster`** | `kc` | `kcmyappdev` | `kcmyappdeve7hgy3` | 
| **`kustoDatabase`** | `kdb` | `kdb-myapp-dev` | `kdb-myapp-dev-e7hgy3` | 
| **`kustoEventHubDataConnection`** | `kehc` | `kehc-myapp-dev` | `kehc-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-l"></a>L
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`linuxVirtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-e7hgy3` | 
| **`linuxVirtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-e7hgy3` | 
| **`loadBalancer`** | `lb` | `lb-myapp-dev` | `lb-myapp-dev-e7hgy3` | 
| **`loadBalancerNatRule`** | `lbnatrl` | `lbnatrl-myapp-dev` | `lbnatrl-myapp-dev-e7hgy3` | 
| **`localNetworkGateway`** | `lgw` | `lgw-myapp-dev` | `lgw-myapp-dev-e7hgy3` | 
| **`logAnalyticsWorkspace`** | `log` | `log-myapp-dev` | `log-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-m"></a>M
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`machineLearningWorkspace`** | `mlw` | `mlw-myapp-dev` | `mlw-myapp-dev-e7hgy3` | 
| **`managedDisk`** | `dsk` | `dsk-myapp-dev` | `dsk-myapp-dev-e7hgy3` | 
| **`mapsAccount`** | `map` | `map-myapp-dev` | `map-myapp-dev-e7hgy3` | 
| **`mariadbDatabase`** | `mariadb` | `mariadb-myapp-dev` | `mariadb-myapp-dev-e7hgy3` | 
| **`mariadbFirewallRule`** | `mariafw` | `mariafw-myapp-dev` | `mariafw-myapp-dev-e7hgy3` | 
| **`mariadbServer`** | `maria` | `maria-myapp-dev` | `maria-myapp-dev-e7hgy3` | 
| **`mariadbVirtualNetworkRule`** | `mariavn` | `mariavn-myapp-dev` | `mariavn-myapp-dev-e7hgy3` | 
| **`mssqlDatabase`** | `sqldb` | `sqldb-myapp-dev` | `sqldb-myapp-dev-e7hgy3` | 
| **`mssqlElasticpool`** | `sqlep` | `sqlep-myapp-dev` | `sqlep-myapp-dev-e7hgy3` | 
| **`mssqlServer`** | `sql` | `sql-myapp-dev` | `sql-myapp-dev-e7hgy3` | 
| **`mysqlDatabase`** | `mysqldb` | `mysqldb-myapp-dev` | `mysqldb-myapp-dev-e7hgy3` | 
| **`mysqlFirewallRule`** | `mysqlfw` | `mysqlfw-myapp-dev` | `mysqlfw-myapp-dev-e7hgy3` | 
| **`mysqlServer`** | `mysql` | `mysql-myapp-dev` | `mysql-myapp-dev-e7hgy3` | 
| **`mysqlVirtualNetworkRule`** | `mysqlvn` | `mysqlvn-myapp-dev` | `mysqlvn-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-n"></a>N
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`networkInterface`** | `nic` | `nic-myapp-dev` | `nic-myapp-dev-e7hgy3` | 
| **`networkSecurityGroup`** | `nsg` | `nsg-myapp-dev` | `nsg-myapp-dev-e7hgy3` | 
| **`networkSecurityGroupRule`** | `nsgr` | `nsgr-myapp-dev` | `nsgr-myapp-dev-e7hgy3` | 
| **`networkSecurityRule`** | `nsgr` | `nsgr-myapp-dev` | `nsgr-myapp-dev-e7hgy3` | 
| **`networkWatcher`** | `nw` | `nw-myapp-dev` | `nw-myapp-dev-e7hgy3` | 
| **`notificationHub`** | `nh` | `nh-myapp-dev` | `nh-myapp-dev-e7hgy3` | 
| **`notificationHubAuthorizationRule`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-e7hgy3` | 
| **`notificationHubNamespace`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-p"></a>P
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`pointToSiteVpnGateway`** | `vpngw` | `vpngw-myapp-dev` | `vpngw-myapp-dev-e7hgy3` | 
| **`postgresqlDatabase`** | `psqldb` | `psqldb-myapp-dev` | `psqldb-myapp-dev-e7hgy3` | 
| **`postgresqlFirewallRule`** | `psqlfw` | `psqlfw-myapp-dev` | `psqlfw-myapp-dev-e7hgy3` | 
| **`postgresqlServer`** | `psql` | `psql-myapp-dev` | `psql-myapp-dev-e7hgy3` | 
| **`postgresqlVirtualNetworkRule`** | `psqlvn` | `psqlvn-myapp-dev` | `psqlvn-myapp-dev-e7hgy3` | 
| **`powerbiEmbedded`** | `pbi` | `pbi-myapp-dev` | `pbi-myapp-dev-e7hgy3` | 
| **`privateDnsZone`** | `pdns` | `pdns-myapp-dev` | `pdns-myapp-dev-e7hgy3` | 
| **`publicIp`** | `pip` | `pip-myapp-dev` | `pip-myapp-dev-e7hgy3` | 
| **`publicIpPrefix`** | `pippf` | `pippf-myapp-dev` | `pippf-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-r"></a>R
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`redisCache`** | `redis` | `redis-myapp-dev` | `redis-myapp-dev-e7hgy3` | 
| **`redisFirewallRule`** | `redisfw` | `redisfwmyappdev` | `redisfwmyappdeve7hgy3` | 
| **`relayHybridConnection`** | `rlhc` | `rlhc-myapp-dev` | `rlhc-myapp-dev-e7hgy3` | 
| **`relayNamespace`** | `rln` | `rln-myapp-dev` | `rln-myapp-dev-e7hgy3` | 
| **`resourceGroup`** | `rg` | `rg-myapp-dev` | `rg-myapp-dev-e7hgy3` | 
| **`roleAssignment`** | `ra` | `ra-myapp-dev` | `ra-myapp-dev-e7hgy3` | 
| **`roleDefinition`** | `rd` | `rd-myapp-dev` | `rd-myapp-dev-e7hgy3` | 
| **`route`** | `rt` | `rt-myapp-dev` | `rt-myapp-dev-e7hgy3` | 
| **`routeTable`** | `route` | `route-myapp-dev` | `route-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-s"></a>S
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`serviceBusNamespace`** | `sb` | `sb-myapp-dev` | `sb-myapp-dev-e7hgy3` | 
| **`serviceBusNamespaceAuthorizationRule`** | `sbar` | `sbar-myapp-dev` | `sbar-myapp-dev-e7hgy3` | 
| **`serviceBusQueue`** | `sbq` | `sbq-myapp-dev` | `sbq-myapp-dev-e7hgy3` | 
| **`serviceBusQueueAuthorizationRule`** | `sbqar` | `sbqar-myapp-dev` | `sbqar-myapp-dev-e7hgy3` | 
| **`serviceBusSubscription`** | `sbs` | `sbs-myapp-dev` | `sbs-myapp-dev-e7hgy3` | 
| **`serviceBusSubscriptionRule`** | `sbsr` | `sbsr-myapp-dev` | `sbsr-myapp-dev-e7hgy3` | 
| **`serviceBusTopic`** | `sbt` | `sbt-myapp-dev` | `sbt-myapp-dev-e7hgy3` | 
| **`serviceBusTopicAuthorizationRule`** | `dnsrec` | `dnsrec-myapp-dev` | `dnsrec-myapp-dev-e7hgy3` | 
| **`serviceFabricCluster`** | `sf` | `sf-myapp-dev` | `sf-myapp-dev-e7hgy3` | 
| **`sharedImage`** | `si` | `si-myapp-dev` | `si-myapp-dev-e7hgy3` | 
| **`sharedImageGallery`** | `sig` | `sigmyappdev` | `sigmyappdeve7hgy3` | 
| **`signalrService`** | `sgnlr` | `sgnlr-myapp-dev` | `sgnlr-myapp-dev-e7hgy3` | 
| **`snapshots`** | `snap` | `snap-myapp-dev` | `snap-myapp-dev-e7hgy3` | 
| **`sqlElasticpool`** | `sqlep` | `sqlep-myapp-dev` | `sqlep-myapp-dev-e7hgy3` | 
| **`sqlFailoverGroup`** | `sqlfg` | `sqlfg-myapp-dev` | `sqlfg-myapp-dev-e7hgy3` | 
| **`sqlFirewallRule`** | `sqlfw` | `sqlfw-myapp-dev` | `sqlfw-myapp-dev-e7hgy3` | 
| **`sqlServer`** | `sql` | `sql-myapp-dev` | `sql-myapp-dev-e7hgy3` | 
| **`storageAccount`** | `st` | `stmyappdev` | `stmyappdeve7hgy3` | 
| **`storageBlob`** | `blob` | `blob-myapp-dev` | `blob-myapp-dev-e7hgy3` | 
| **`storageContainer`** | `stct` | `stct-myapp-dev` | `stct-myapp-dev-e7hgy3` | 
| **`storageDataLakeGen2Filesystem`** | `stdl` | `stdl-myapp-dev` | `stdl-myapp-dev-e7hgy3` | 
| **`storageQueue`** | `stq` | `stq-myapp-dev` | `stq-myapp-dev-e7hgy3` | 
| **`storageShare`** | `sts` | `sts-myapp-dev` | `sts-myapp-dev-e7hgy3` | 
| **`storageShareDirectory`** | `sts` | `sts-myapp-dev` | `sts-myapp-dev-e7hgy3` | 
| **`storageTable`** | `stt` | `stt-myapp-dev` | `stt-myapp-dev-e7hgy3` | 
| **`streamAnalyticsFunctionJavascriptUdf`** | `asafunc` | `asafunc-myapp-dev` | `asafunc-myapp-dev-e7hgy3` | 
| **`streamAnalyticsJob`** | `asa` | `asa-myapp-dev` | `asa-myapp-dev-e7hgy3` | 
| **`streamAnalyticsOutputBlob`** | `asaoblob` | `asaoblob-myapp-dev` | `asaoblob-myapp-dev-e7hgy3` | 
| **`streamAnalyticsOutputEventHub`** | `asaoeh` | `asaoeh-myapp-dev` | `asaoeh-myapp-dev-e7hgy3` | 
| **`streamAnalyticsOutputMssql`** | `asaomssql` | `asaomssql-myapp-dev` | `asaomssql-myapp-dev-e7hgy3` | 
| **`streamAnalyticsOutputServiceBusQueue`** | `asaosbq` | `asaosbq-myapp-dev` | `asaosbq-myapp-dev-e7hgy3` | 
| **`streamAnalyticsOutputServiceBusTopic`** | `asaosbt` | `asaosbt-myapp-dev` | `asaosbt-myapp-dev-e7hgy3` | 
| **`streamAnalyticsReferenceInputBlob`** | `asarblob` | `asarblob-myapp-dev` | `asarblob-myapp-dev-e7hgy3` | 
| **`streamAnalyticsStreamInputBlob`** | `asaiblob` | `asaiblob-myapp-dev` | `asaiblob-myapp-dev-e7hgy3` | 
| **`streamAnalyticsStreamInputEventHub`** | `asaieh` | `asaieh-myapp-dev` | `asaieh-myapp-dev-e7hgy3` | 
| **`streamAnalyticsStreamInputIotHub`** | `asaiiot` | `asaiiot-myapp-dev` | `asaiiot-myapp-dev-e7hgy3` | 
| **`subnet`** | `snet` | `snet-myapp-dev` | `snet-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-t"></a>T
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`templateDeployment`** | `deploy` | `deploy-myapp-dev` | `deploy-myapp-dev-e7hgy3` | 
| **`trafficManagerProfile`** | `traf` | `traf-myapp-dev` | `traf-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-v"></a>V
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`virtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-e7` | 
| **`virtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-` | 
| **`virtualNetwork`** | `vnet` | `vnet-myapp-dev` | `vnet-myapp-dev-e7hgy3` | 
| **`virtualNetworkGateway`** | `vgw` | `vgw-myapp-dev` | `vgw-myapp-dev-e7hgy3` | 
| **`virtualNetworkPeering`** | `vpeer` | `vpeer-myapp-dev` | `vpeer-myapp-dev-e7hgy3` | 
| **`virtualWan`** | `vwan` | `vwan-myapp-dev` | `vwan-myapp-dev-e7hgy3` | 
[Go to top](#reference)

## <a name="ref-w"></a>W
| Resource reference&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | slug | name | nameUnique |
| -------- | ---------- | ----------- | ----------- |
| **`windowsVirtualMachine`** | `vm` | `vm-myapp-dev` | `vm-myapp-dev-e7` | 
| **`windowsVirtualMachineScaleSet`** | `vmss` | `vmss-myapp-dev` | `vmss-myapp-dev-` | 
[Go to top](#reference)

