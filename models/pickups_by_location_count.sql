{{ config(materialized='table') }}

with source_data as (

    select pickup_ntaname, count(*) as cnt from default.trips group by pickup_ntaname order by 2 desc

)

select *
from source_data

