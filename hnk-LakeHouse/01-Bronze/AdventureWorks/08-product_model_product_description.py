# Databricks notebook source
# MAGIC %md
# MAGIC ## Ler os arquivos Parquet

# COMMAND ----------

table = 'product_model_product_description'
database_name = 'adventure_works_bronze'
folder_path = '/mnt/hnkadls02/landing-zone/AdventureWorksLT/'

# COMMAND ----------

df = spark.read.parquet(f"{folder_path}/{table}.parquet")

# COMMAND ----------

df.write.format("delta")\
        .mode("overwrite")\
        .option("overwriteSchema", True)\
        .saveAsTable(f"{database_name}.{table}")

# COMMAND ----------


