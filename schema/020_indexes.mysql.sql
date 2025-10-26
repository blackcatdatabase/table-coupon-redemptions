-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  coupon_redemptions
CREATE INDEX idx_cr_coupon ON coupon_redemptions (coupon_id);

CREATE INDEX idx_cr_user   ON coupon_redemptions (user_id);

CREATE INDEX idx_cr_order  ON coupon_redemptions (order_id);
