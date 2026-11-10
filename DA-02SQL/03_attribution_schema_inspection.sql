-- Purpose: Inspect columns and data types for attribution tables.
SELECT
  table_name,
  column_name,
  data_type
FROM `da02-customer-360.da02_customer360.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name IN (
  'first_touch_attribution',
  'last_touch_attribution',
  'linear_attribution',
  'time_decay_attribution',
  'attribution_channel_comparison'
)
ORDER BY table_name, ordinal_position;

-- Purpose: Inspect the customer_profile table structure.
SELECT
  column_name,
  data_type
FROM `da02-customer-360.da02_customer360.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'customer_profile'
ORDER BY ordinal_position;

-- Purpose: Inspect the GA4 events table structure.
SELECT
  column_name,
  data_type
FROM `da02-customer-360.da02_customer360.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'ga4_events'
ORDER BY ordinal_position;
