-- Purpose: Validate first-touch and last-touch attribution dates.
SELECT
  'First Touch' AS model,
  COUNT(*) AS total_rows,
  COUNTIF(first_touch_date = '20201101') AS matching_dates
FROM `da02-customer-360.da02_customer360.first_touch_attribution`

UNION ALL

SELECT
  'Last Touch',
  COUNT(*),
  COUNTIF(last_touch_date = '20201101')
FROM `da02-customer-360.da02_customer360.last_touch_attribution`;
