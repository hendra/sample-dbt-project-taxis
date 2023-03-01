
-- Use the `ref` function to select from other models

select payment_type, count(*) as cnt from default.trips group by payment_type
