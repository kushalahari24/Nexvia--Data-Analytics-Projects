-- Purpose: Create basic historical customer lifetime value metrics
-- from the existing customer RFM table.
-- Note: CREATE OR REPLACE TABLE replaces the target table if executed.

CREATE OR REPLACE TABLE
  `da02-customer-360.da02_customer360.customer_clv` AS
SELECT
  user_pseudo_id,
  frequency,
  monetary_value,
  recency_days,
  SAFE_DIVIDE(monetary_value, frequency) AS average_order_value,
  monetary_value AS historical_customer_value
FROM `da02-customer-360.da02_customer360.customer_rfm`;
