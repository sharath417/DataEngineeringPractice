CREATE VIEW rp_product_views_ds.rp_product_nopii as
SELECT CUST_ID, ORD_ID,
PURCH_DATE, CUST_AMT, PARENT_MDSE_DIVN_DESC,
COUNTRY_CODE, CURRENT_DATE() as Query_Date 
FROM rp_product_hist_ds.rp_product_hist_table;