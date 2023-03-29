-- Use the `ref` function to select from other models

select
    payment_type
    , 'JPY' as constant_currency
    , count(*) as cnt
from {{ source( 'nyc_taxi_data', 'trips' ) }}
group by payment_type
