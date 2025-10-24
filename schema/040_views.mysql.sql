-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  coupon_redemptions
-- Contract view for [coupon_redemptions]
CREATE OR REPLACE VIEW vw_coupon_redemptions AS
SELECT
  id,
  coupon_id,
  user_id,
  order_id,
  redeemed_at,
  amount_applied
FROM coupon_redemptions;
