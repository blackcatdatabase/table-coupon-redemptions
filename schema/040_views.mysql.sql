-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  coupon_redemptions
-- Contract view for [coupon_redemptions]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_coupon_redemptions AS
SELECT
  id,
  coupon_id,
  user_id,
  order_id,
  redeemed_at,
  amount_applied
FROM coupon_redemptions;
