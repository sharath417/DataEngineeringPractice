INSERT INTO rp_product_hist_ds.rp_product_hist_table
SELECT
    SAFE_CAST(NULLIF(cid, '') AS INT64) AS CUST_ID,
    SAFE_CAST(NULLIF(upc, '') AS INT64) AS USR_COUNT,
    SAFE_CAST(NULLIF(oid, '') AS INT64) AS ORD_ID,

    COALESCE(
      SAFE.PARSE_DATE('%Y-%m-%d', NULLIF(dt, '')),
      SAFE.PARSE_DATE('%d-%m-%Y', NULLIF(dt, '')),
      SAFE.PARSE_DATE('%m/%d/%Y', NULLIF(dt, '')),
      SAFE.PARSE_DATE('%Y%m%d', NULLIF(dt, ''))
    ) AS PURCH_DATE,

    COALESCE(
      SAFE.PARSE_DATE('%Y-%m-%d', NULLIF(r_dt, '')),
      SAFE.PARSE_DATE('%d-%m-%Y', NULLIF(r_dt, '')),
      SAFE.PARSE_DATE('%m/%d/%Y', NULLIF(r_dt, '')),
      SAFE.PARSE_DATE('%Y%m%d', NULLIF(r_dt, ''))
    ) AS REC_DATE,

    SAFE_CAST(NULLIF(prc, '') AS FLOAT64) AS PRICE_ITEM,
    SAFE_CAST(NULLIF(qty, '') AS INT64) AS QTY,
    SAFE_CAST(NULLIF(amt, '') AS FLOAT64) AS CUST_AMT,
    SAFE_CAST(NULLIF(r_qty, '') AS INT64) AS REC_QTY,
    SAFE_CAST(NULLIF(r_amt, '') AS FLOAT64) AS REC_AMT,
    SAFE_CAST(NULLIF(web_prod_id, '') AS INT64) AS web_prod_id,
    NULLIF(GMM_DESC, '') AS GMM_DESC,
    NULLIF(PARENT_MDSE_DIVN_DESC, '') AS PARENT_MDSE_DIVN_DESC,
    CURRENT_TIMESTAMP() AS LOAD_DT,
    'US' AS COUNTRY_CODE,
    'RP' AS ENTITY_CODE
FROM rp_product_stg_ds.rp_product_stg_table;