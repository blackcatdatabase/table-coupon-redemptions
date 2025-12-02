-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  coupon_redemptions

CREATE INDEX idx_cr_coupon ON coupon_redemptions (coupon_id);

CREATE INDEX idx_cr_user   ON coupon_redemptions (user_id);

CREATE INDEX idx_cr_order  ON coupon_redemptions (order_id);

CREATE INDEX idx_cr_tenant_coupon ON coupon_redemptions (tenant_id, coupon_id);

CREATE INDEX idx_cr_tenant_user   ON coupon_redemptions (tenant_id, user_id);

CREATE INDEX idx_cr_tenant_order  ON coupon_redemptions (tenant_id, order_id);

CREATE UNIQUE INDEX ux_cr_tenant_order_coupon ON coupon_redemptions (tenant_id, order_id, coupon_id);
