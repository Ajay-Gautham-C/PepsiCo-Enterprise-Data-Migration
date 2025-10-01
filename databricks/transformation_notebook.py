from pyspark.sql import SparkSession
from pyspark.sql.functions import col, trim, upper

# Initialize Spark
spark = SparkSession.builder.appName("DataTransformation").getOrCreate()

# Sample data (dummy)
data = [("2025-01-01","John Doe","P001",100),
        ("2025-01-02","Jane Smith","P002",200)]

columns = ["OrderDate","CustomerName","ProductID","SalesAmount"]
df = spark.createDataFrame(data, columns)

# Data cleaning
df_cleaned = df.withColumn("CustomerName", upper(trim(col("CustomerName")))) \
               .filter(col("SalesAmount").isNotNull())

# Transformation - Aggregate sales by ProductID
df_agg = df_cleaned.groupBy("ProductID").sum("SalesAmount")
df_agg.show()
