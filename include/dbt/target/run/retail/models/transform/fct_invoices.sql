
  
    

    create or replace table `nba-api-pipeline`.`retail`.`fct_invoices`
    
    

    OPTIONS()
    as (
      -- fct_invoices.sql

-- Create the fact table by joining the relevant keys from dimension table
WITH fct_invoices_cte AS (
    SELECT
        InvoiceNo AS invoice_id,
        InvoiceDate AS datetime_id,
        to_hex(md5(cast(coalesce(cast(StockCode as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(Description as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(UnitPrice as STRING), '_dbt_utils_surrogate_key_null_') as STRING))) as product_id,
        to_hex(md5(cast(coalesce(cast(CustomerID as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(Country as STRING), '_dbt_utils_surrogate_key_null_') as STRING))) as customer_id,
        Quantity AS quantity,
        Quantity * UnitPrice AS total
    FROM `nba-api-pipeline`.`retail`.`raw_invoices`
    WHERE Quantity > 0
)
SELECT
    invoice_id,
    dt.datetime_id,
    dp.product_id,
    dc.customer_id,
    quantity,
    total
FROM fct_invoices_cte fi
INNER JOIN `nba-api-pipeline`.`retail`.`dim_datetime` dt ON fi.datetime_id = dt.datetime_id
INNER JOIN `nba-api-pipeline`.`retail`.`dim_product` dp ON fi.product_id = dp.product_id
INNER JOIN `nba-api-pipeline`.`retail`.`dim_customer` dc ON fi.customer_id = dc.customer_id
    );
  