-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Databases Bronze, Prata e Ouro da fonte Adventure_Works

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS adventure_works_bronze
LOCATION '/mnt/hnkadls02/bronze/adventure_works_bronze'

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS adventure_works_prata
LOCATION '/mnt/hnkadls02/prata/adventure_works_prata'

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS adventure_works_ouro
LOCATION '/mnt/hnkadls02/ouro/adventure_works_ouro'

-- COMMAND ----------

-- DROP DATABASE adventure_works_prata CASCADE

-- COMMAND ----------


