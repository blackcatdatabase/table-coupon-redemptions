-- Auto-generated from schema-views-mysql.psd1 (map@c5e4097)
-- engine: mysql
-- table:  coupon_redemptions
-- Contract view for [coupon_redemptions]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_coupon_redemptions AS
SELECT
  id,
  coupon_id,
  user_id,
  order_id,
  redeemed_at,
  amount_applied
FROM coupon_redemptions;
