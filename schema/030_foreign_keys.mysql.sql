-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-10-24T09:13:35Z)
-- engine: mysql
-- table:  coupon_redemptions
ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_coupon FOREIGN KEY (coupon_id) REFERENCES coupons(id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_order FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE;
