-- Purpose: Create a unified comparison of First Touch, Last Touch,
-- Linear, and Time Decay attribution models.
-- Note: CREATE OR REPLACE TABLE replaces the target table if executed.

CREATE OR REPLACE TABLE
  `da02-customer-360.da02_customer360.attribution_comparison` AS

SELECT
  'First Touch' AS attribution_model,
  COUNT(DISTINCT a.user_pseudo_id) AS customers,
  SUM(c.total_revenue) AS attributed_revenue
FROM `da02-customer-360.da02_customer360.first_touch_attribution` AS a
LEFT JOIN `da02-customer-360.da02_customer360.customer_profile` AS c
  ON a.user_pseudo_id = c.user_pseudo_id

UNION ALL

SELECT
  'Last Touch',
  COUNT(DISTINCT a.user_pseudo_id),
  SUM(c.total_revenue)
FROM `da02-customer-360.da02_customer360.last_touch_attribution` AS a
LEFT JOIN `da02-customer-360.da02_customer360.customer_profile` AS c
  ON a.user_pseudo_id = c.user_pseudo_id

UNION ALL

SELECT
  'Linear',
  COUNT(DISTINCT user_pseudo_id),
  SUM(linear_attributed_revenue)
FROM `da02-customer-360.da02_customer360.linear_attribution`

UNION ALL

SELECT
  'Time Decay',
  COUNT(DISTINCT user_pseudo_id),
  SUM(attributed_revenue)
FROM `da02-customer-360.da02_customer360.time_decay_attribution`;
