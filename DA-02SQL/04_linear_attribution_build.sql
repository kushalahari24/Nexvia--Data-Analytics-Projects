-- Purpose: Build linear attribution by splitting each customer's revenue
-- equally across their distinct GA4 traffic touchpoints.
-- Note: CREATE OR REPLACE TABLE replaces the target table if executed.

CREATE OR REPLACE TABLE
  `da02-customer-360.da02_customer360.linear_attribution` AS

WITH touchpoints AS (
  SELECT DISTINCT
    user_pseudo_id,
    COALESCE(NULLIF(traffic_source, ''), '(not set)') AS traffic_source,
    COALESCE(NULLIF(traffic_medium, ''), '(not set)') AS traffic_medium,
    COALESCE(NULLIF(campaign_name, ''), '(not set)') AS campaign_name
  FROM `da02-customer-360.da02_customer360.ga4_events`
),

customer_revenue AS (
  SELECT
    user_pseudo_id,
    total_revenue
  FROM `da02-customer-360.da02_customer360.customer_profile`
),

allocated AS (
  SELECT
    t.user_pseudo_id,
    t.traffic_source,
    t.traffic_medium,
    t.campaign_name,
    COUNT(*) OVER (
      PARTITION BY t.user_pseudo_id
    ) AS touchpoint_count,
    c.total_revenue
  FROM touchpoints AS t
  JOIN customer_revenue AS c
    ON t.user_pseudo_id = c.user_pseudo_id
)

SELECT
  user_pseudo_id,
  touchpoint_count,
  total_revenue,
  SAFE_DIVIDE(total_revenue, touchpoint_count)
    AS linear_attributed_revenue,
  traffic_source,
  traffic_medium,
  campaign_name
FROM allocated;
