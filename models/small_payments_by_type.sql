
-- Use the `ref` function to select from other models

select payment_type, count(*) as cnt, 'JPY' as constant_currency from {{ source( 'nyc_taxi_data', 'trips' ) }} group by payment_type
