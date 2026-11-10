# DA-02 BigQuery SQL — Recovered Queries

These SQL scripts organize queries recovered from the project's BigQuery Job history and supplied chat messages.

**Project:** `da02-customer-360`  
**Dataset:** `da02_customer360`

## Files

1. `01_attribution_date_validation.sql` — checks first-touch and last-touch date matches.
2. `02_attribution_table_previews.sql` — previews first-touch and last-touch records.
3. `03_attribution_schema_inspection.sql` — inspects attribution table columns and types.
4. `04_linear_attribution_build.sql` — creates/replaces the linear attribution table from GA4 touchpoints and customer revenue.
5. `05_linear_attribution_validation.sql` — checks linear allocation and revenue totals.
6. `06_attribution_comparison_build.sql` — creates/replaces the comparison table for four attribution models.
7. `07_channel_attribution_analysis.sql` — summarizes attributed revenue by model and channel.
8. `08_customer_clv_build.sql` — creates/replaces customer CLV metrics from the RFM table.
9. `09_customer_rfm_clv_previews.sql` — previews existing RFM and CLV tables.

## Important scope note

These are the recovered queries supplied for this project. They do **not** represent every possible query used to build every BigQuery table. Creation SQL for first-touch, last-touch, time-decay, identity mapping, customer profile, RFM, segmentation, ROI, and CPA was not included in the recovered messages and is not fabricated here.

The build scripts use `CREATE OR REPLACE TABLE`; they are included as source documentation. Do not execute them again unless you intend to replace the existing tables.
