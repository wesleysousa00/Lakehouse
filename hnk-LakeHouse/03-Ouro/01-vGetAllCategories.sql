-- Databricks notebook source
CREATE OR REPLACE VIEW adventure_works_ouro.vGetAllCategories 
AS 
SELECT 

T2.Name AS ParentProductCategoryName,
T1.Name AS ProductCategoryName,
--T1.ParentProductCategoryID,
T1.ProductCategoryID

FROM adventure_works_prata.product_category T1
INNER JOIN adventure_works_prata.product_category T2 ON T1.ParentProductCategoryID = T2.ProductCategoryID

ORDER BY ProductCategoryID

-- COMMAND ----------

SELECT * FROM adventure_works_ouro.vGetAllCategories

-- COMMAND ----------


