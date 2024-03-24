# EKD_Telegraf_Modbus
This repository contains my Telegraf configuration as well as Grafana Dashboard to visualize Energiekonzepte Deutschland (EKD) Ampere StoragePRO (aka SAJ HS2) inverter.

Here some screenshots of the Dashboard:
![image](https://github.com/litronics/EKD_Telegraf_Modbus/assets/22157317/02058dfb-e007-4b33-a30d-7839f8f24d74)
![image](https://github.com/litronics/EKD_Telegraf_Modbus/assets/22157317/595a23d2-3f51-4176-9182-fe682b62feff)

The configuration is provided as is and there is no guarantee or liability for any damage may happen to other systems.

## Installation instructions - own Telegraf instance.
1. Setup and configure your InfluxDB environment (https://hub.docker.com/_/influxdb)
2. Setup Telegreaf application to stream data into InfluxDB
3. Copy modbus.conf from '/telegraf/telegraf.d/' folder to your /telegraf.d/ folder
4. Setup Grafana
5. Import the Grafana Dashboard as provided in the "EKD_StoragePRO_values.json"

## Installation instructions - Docker InfluxDB, Kapacitor, Chronograf, Telegraf with reverse proxy
1. clone this repository to your Docker host
2. create required certificates in /proxy/certs
   you'll need at least three certs (influxdb, chronograf, kapacitor) named as the FQDN in "CRT" and "P7B" format.
   openssl configfile for the required SAN certificates can be used as template.
3. update telegraf configuration to fit your requirements
4. update docker-compose.yml to fit your requirements
5. run 'docker compose up -d'

