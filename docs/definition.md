<!-- Auto-generated from schema-map.psd1 @ 6cefe8e (2025-10-22T20:27:41+02:00) -->
# Definition – coupon_redemptions

Records of coupon usage per order and user.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| coupon_id | BIGINT UNSIGNED | NO | — | Coupon (FK coupons.id). |  |
| user_id | BIGINT UNSIGNED | NO | — | User (FK users.id). |  |
| order_id | BIGINT UNSIGNED | NO | — | Order (FK orders.id). |  |
| redeemed_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | When coupon was redeemed (UTC). |  |
| amount_applied | DECIMAL(12,2) | NO | — | Applied discount amount. |  |