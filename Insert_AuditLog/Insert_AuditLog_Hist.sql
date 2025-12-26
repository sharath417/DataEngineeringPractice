INSERT INTO sales_hist_ds.audit_log
VALUES(
'batch_001','t_sales_hist_2025_12_25',
(SELECT count(*) FROM sales_hist_ds.t_sales_hist_2025_12_25),
'HISTORY_LOAD_SUCCESS',
CURRENT_TIMESTAMP()
);