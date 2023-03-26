{{ config(materialized='table') }}

with source_data as (

    select average( trip_distance ) as average_trip_distance from default.trips

)

select *
from source_data
-- where id is not null
