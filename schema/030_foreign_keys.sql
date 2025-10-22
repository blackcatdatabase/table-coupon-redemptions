-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: coupon_redemptions
ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_coupon FOREIGN KEY (coupon_id) REFERENCES coupons(id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_order FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE;
