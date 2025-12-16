-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  coupon_redemptions

-- Contract view for [coupon_redemptions]
CREATE OR REPLACE VIEW vw_coupon_redemptions AS
SELECT
  id,
  tenant_id,
  coupon_id,
  user_id,
  order_id,
  redeemed_at,
  amount_applied
FROM coupon_redemptions;
