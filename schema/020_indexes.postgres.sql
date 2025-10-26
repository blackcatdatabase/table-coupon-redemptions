-- Auto-generated from schema-map-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  coupon_redemptions
CREATE INDEX IF NOT EXISTS idx_cr_coupon ON coupon_redemptions (coupon_id);

CREATE INDEX IF NOT EXISTS idx_cr_user   ON coupon_redemptions (user_id);

CREATE INDEX IF NOT EXISTS idx_cr_order  ON coupon_redemptions (order_id);
