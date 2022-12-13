-- Databricks notebook source
CREATE OR REPLACE TABLE adventure_works_ouro.vFatoVendasProdutos
SELECT 
  sales.*,
  header.SalesOrderNumber,
  header.CustomerID,
  header.OrderDate

FROM adventure_works_prata.sales_order_detail sales

INNER JOIN adventure_works_prata.sales_order_header header
        ON sales.SalesOrderID = header.SalesOrderID

-- COMMAND ----------

SELECT * FROM adventure_works_ouro.vFatoVendasProdutos

-- COMMAND ----------


