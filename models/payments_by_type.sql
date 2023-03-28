
-- Use the `ref` function to select from other models

select payment_type, avg(pickup_latitude), count(*) as cnt, null as constant_currency from {{ source ('nyc_taxi_data', 'trips') }} where fare_amount < 1 group by payment_type

