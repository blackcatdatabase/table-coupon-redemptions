-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  coupon_redemptions

CREATE INDEX IF NOT EXISTS idx_cr_coupon ON coupon_redemptions (coupon_id);

CREATE INDEX IF NOT EXISTS idx_cr_user   ON coupon_redemptions (user_id);

CREATE INDEX IF NOT EXISTS idx_cr_order  ON coupon_redemptions (order_id);

CREATE INDEX IF NOT EXISTS idx_cr_tenant_coupon ON coupon_redemptions (tenant_id, coupon_id);

CREATE INDEX IF NOT EXISTS idx_cr_tenant_user   ON coupon_redemptions (tenant_id, user_id);

CREATE INDEX IF NOT EXISTS idx_cr_tenant_order  ON coupon_redemptions (tenant_id, order_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_cr_tenant_order_coupon ON coupon_redemptions (tenant_id, order_id, coupon_id);
