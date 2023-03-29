with aggregated_value as (
  select sum(cnt) as cnt from taxi_dev.payments_by_type
)

select * from aggregated_value where cnt < 500
