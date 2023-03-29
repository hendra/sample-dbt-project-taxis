-- Use the `ref` function to select from other models

select
    payment_type
    , null as constant_currency
    , count(*) as cnt
from {{ source ('nyc_taxi_data', 'trips') }}
where fare_amount < 1
group by payment_type
