SELECT 
    product_id
    , sales_date
    ,model_name
    ,color_name
    ,forecast_stock
    , price
    , stock
    , quantity

FROM {{ref('stg_raw_data_circle__raw_cc_stock')}}
JOIN {{ref("stg_raw_data_circle__raw_cc_sales")}} USING(product_id)