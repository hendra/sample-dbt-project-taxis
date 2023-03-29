{{ config(materialized='table') }}

with source_data as (

    select
        pickup_ntaname
        , count(*) as cnt
    from {{ source( 'nyc_taxi_data', 'trips' ) }}
    group by pickup_ntaname
    order by 2 desc

)

select *
from source_data
