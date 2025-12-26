CREATE VIEW sales_view_ds.sales_nopii as
SELECT Item_Identifier, Item_Fat_Content,
Item_Type, Item_MRP, Outlet_Type,
loaded_by, CURRENT_DATE() as Query_Date 
FROM sales_hist_ds.t_sales_hist_2025_12_25;