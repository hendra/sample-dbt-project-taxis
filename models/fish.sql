
-- Use the `ref` function to select from other models

select asd, payment_type, count(*) as cnt, 'JPY' as constant_currency from default.trips group by payment_type
