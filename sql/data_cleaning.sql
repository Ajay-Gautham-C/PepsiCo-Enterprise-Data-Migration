---

## 🧑‍💻 Sample SQL Scripts

**`data_cleaning.sql`**
```sql
-- Remove duplicates and standardize fields
SELECT DISTINCT
    CAST(order_date AS DATE) AS order_date,
    UPPER(TRIM(customer_name)) AS customer_name,
    product_id,
    sales_amount
FROM staging_sales
WHERE sales_amount IS NOT NULL;
