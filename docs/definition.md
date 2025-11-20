<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – coupon_redemptions

Records of coupon usage per order and user.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — |  |  |
| coupon_id | BIGINT | NO | — | Coupon (FK coupons.id). |  |
| user_id | BIGINT | NO | — | User (FK users.id). |  |
| order_id | BIGINT | NO | — | Order (FK orders.id). |  |
| redeemed_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When coupon was redeemed (UTC). |  |
| amount_applied | NUMERIC(12,2) | NO | — | Applied discount amount. |  |