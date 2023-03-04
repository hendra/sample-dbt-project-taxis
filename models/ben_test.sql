
-- Use the `ref` function to select from other models

select payment_type, count(*) as cnt, 'JPY' as constant_currency, 'BENTEST' as wibble from default.trips group by payment_type
