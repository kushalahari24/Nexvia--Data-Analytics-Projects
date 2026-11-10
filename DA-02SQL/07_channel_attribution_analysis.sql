-- Purpose: Summarize attributed revenue by attribution model and channel.
SELECT
  attribution_model,
  channel,
  ROUND(SUM(attributed_revenue), 2) AS attributed_revenue
FROM `da02-customer-360.da02_customer360.attribution_channel_comparison`
GROUP BY attribution_model, channel
ORDER BY attribution_model, attributed_revenue DESC;

-- Purpose: Preview the channel comparison table in model/channel order.
SELECT *
FROM `da02-customer-360.da02_customer360.attribution_channel_comparison`
ORDER BY attribution_model, channel;
