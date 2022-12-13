-- Databricks notebook source
CREATE OR REPLACE VIEW vProductAndDescription AS
SELECT 
T1.ProductID,
T1.Name AS Name,
T2.Name AS ProductModel,
T3.Culture,
T4.Description


FROM adventure_works_prata.product T1
INNER JOIN adventure_works_prata.product_model T2 
        ON T1.ProductModelID = T2.ProductModelID
        
INNER JOIN adventure_works_prata.product_model_product_description T3 
        ON T1.ProductModelID = T3.ProductModelID

INNER JOIN adventure_works_prata.product_description T4
        ON T3.ProductDescriptionID = T4.ProductDescriptionID
        

-- COMMAND ----------

SELECT * FROM vProductAndDescription

-- COMMAND ----------


