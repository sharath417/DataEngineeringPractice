INSERT INTO sales_hist_ds.t_sales_hist_2025_12_25 
SELECT Item_Identifier, 
SAFE_CAST(Item_Weight as FLOAT64),
Item_Fat_Content, 
SAFE_CAST(Item_Visibility as FLOAT64),
Item_Type, 
SAFE_CAST(Item_MRP as FLOAT64), 
Outlet_Identifier,
SAFE_CAST(Outlet_Establishment_Year as INT64), 
Outlet_Size,
Outlet_Location_Type, 
Outlet_Type, 
SAFE_CAST(Item_Outlet_Sales as FLOAT64),
EXTRACT(YEAR FROM CURRENT_DATE()) - SAFE_CAST(Outlet_Establishment_Year as INT64) as Outlet_Age,
'Sharath' as loaded_by, 
CURRENT_TIMESTAMP() as load_ts 
FROM sales_stg_ds.t_sales_stg_2025_12_25;