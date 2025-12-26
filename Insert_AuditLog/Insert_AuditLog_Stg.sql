INSERT INTO sales_hist_ds.audit_log
VALUES(
'batch_001','t_sales_stg_2025_12_25',
(SELECT count(*) FROM sales_stg_ds.t_sales_stg_2025_12_25),
'STAGE_LOAD_SUCCESS',
CURRENT_TIMESTAMP()
);