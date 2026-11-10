-- Purpose: Compare original customer revenue with linear allocated revenue.
SELECT
  COUNT(*) AS touchpoint_rows,
  COUNT(DISTINCT user_pseudo_id) AS customers,
  SUM(total_revenue) AS original_revenue,
  SUM(linear_attributed_revenue) AS allocated_revenue
FROM `da02-customer-360.da02_customer360.linear_attribution`;

-- Purpose: Review allocation totals by number of touchpoints.
SELECT
  touchpoint_count,
  COUNT(*) AS customer_rows,
  SUM(total_revenue) AS original_revenue,
  SUM(linear_attributed_revenue) AS attributed_revenue
FROM `da02-customer-360.da02_customer360.linear_attribution`
GROUP BY touchpoint_count
ORDER BY touchpoint_count;

-- Purpose: Compare customer profile revenue with linear table totals.
SELECT
  'Customer Profile' AS source,
  SUM(total_revenue) AS revenue
FROM `da02-customer-360.da02_customer360.customer_profile`

UNION ALL

SELECT
  'Linear Original Revenue',
  SUM(total_revenue)
FROM `da02-customer-360.da02_customer360.linear_attribution`

UNION ALL

SELECT
  'Linear Attributed Revenue',
  SUM(linear_attributed_revenue)
FROM `da02-customer-360.da02_customer360.linear_attribution`;
