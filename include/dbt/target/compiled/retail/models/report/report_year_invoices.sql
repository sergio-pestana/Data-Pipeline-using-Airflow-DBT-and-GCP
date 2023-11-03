-- report_year_invoices.sql
SELECT
  dt.year,
  dt.month,
  COUNT(DISTINCT fi.invoice_id) AS num_invoices,
  SUM(fi.total) AS total_revenue
FROM `nba-api-pipeline`.`retail`.`fct_invoices` fi
JOIN `nba-api-pipeline`.`retail`.`dim_datetime` dt ON fi.datetime_id = dt.datetime_id
GROUP BY 1, 2
ORDER BY 1, 2