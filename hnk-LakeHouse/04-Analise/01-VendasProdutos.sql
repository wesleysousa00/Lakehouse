-- Databricks notebook source
SELECT * FROM adventure_works_ouro.vFatoVendasProdutos

-- COMMAND ----------

SELECT * FROM adventure_works_ouro.vFatoVendasProdutos

-- COMMAND ----------

SELECT 
ProductID,
SUM(LineTotal) AS total_faturamento,
SUM(OrderQty) AS quantidade_produtos

FROM adventure_works_ouro.vFatoVendasProdutos
GROUP BY ProductID
ORDER BY LineTotal DESC

-- COMMAND ----------


