# Databricks notebook source
# MAGIC %md
# MAGIC ## Fazer a conexão com o ADLS
# MAGIC - Criar um Registro de App do Databricks;
# MAGIC - Dar permissão para esse registro como Blob Data Contributor
# MAGIC - Criar um certificado, copiar essa e outras informações para as variáveis aqui
# MAGIC - Depois armazenar os segredos com Key Vault e Databricks Secrets Scopes

# COMMAND ----------



# COMMAND ----------

## Jeito certo de fazer
#storage_account_name = ''
#client_id = dbutils.secrets.get(scope= '', key= '')
#tenant_id = dbutils.secrets.get(scope= '', key= '')
#client_secret = dbutils.secrets.get(scope= '', key= '')

# COMMAND ----------

storage_account_name = "hnkadls02"                   #Datalake
client_id = "b2dc161a-584a-458d-be73-d873306c528f"   #Databricks publico (app-register)
tenant_id = "37b4cc30-3315-4598-89e5-e6190a702bc0"   #Databricks publico (app-register)
client_secret = "P588Q~jmw-GB9ngkiCMSzFwoYW9LcDF1Rw_r7bsX"  #Databricks

# COMMAND ----------

configs = {"fs.azure.account.auth.type": "OAuth",
           "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
           "fs.azure.account.oauth2.client.id": f"{client_id}",
           "fs.azure.account.oauth2.client.secret": f"{client_secret}",
           "fs.azure.account.oauth2.client.endpoint": f"https://login.microsoftonline.com/{tenant_id}/oauth2/token"
          }

# COMMAND ----------

def mount_adls(container_name):
    dbutils.fs.mount(
        source = f"abfss://{container_name}@{storage_account_name}.dfs.core.windows.net/",
        mount_point = f"/mnt/{storage_account_name}/{container_name}",
        extra_configs = configs)

# COMMAND ----------

mount_adls("landing-zone")


# COMMAND ----------

mount_adls("bronze")

# COMMAND ----------

mount_adls("prata")

# COMMAND ----------

mount_adls("ouro")

# COMMAND ----------

# MAGIC %fs
# MAGIC 
# MAGIC ls 'mnt/hnkadls02/landing-zone/AdventureWorksLT/'

# COMMAND ----------


