-- Databricks notebook source
CREATE OR REPLACE TABLE adventure_works_prata.address
AS
SELECT *
FROM adventure_works_bronze.address

-- COMMAND ----------

-- SELECT AddressID, AddressLine1, AddressLine2
-- FROM adventure_works_bronze.address
-- WHERE AddressLine2 IS NOT NULL

-- COMMAND ----------


