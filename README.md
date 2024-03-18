# EKD_Telegraf_Modbus
This repository contains my Telegraf configuration as well as Grafana Dashboard to visualize Energiekonzepte Deutschland (EKD) Ampere StoragePRO (aka SAJ HS2) inverter.

The configuration is provided as is and there is no guarantee or liability for any damage may happen to other systems.

## Installation instructuions.
1. Setup and configure your InfluxDB environment (https://hub.docker.com/_/influxdb)
2. Setup Telegreaf application to stream data into InfluxDB
3. Copy modbus.conf from /telegraf.d/ folder to your /telegraf.d/ folder
4. Setup Grafana
5. Import the Grafana Dashboard as provided in the "EKD_StoragePRO_values.json"

Personally I am running InfluxDB, chronograf, telegraf and kapacitor in a dockerized network with a nginx reverse proxy providing connectivity to the applications.
