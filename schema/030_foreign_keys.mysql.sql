-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  coupon_redemptions

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_coupon FOREIGN KEY (tenant_id, coupon_id) REFERENCES coupons(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_order FOREIGN KEY (tenant_id, order_id) REFERENCES orders(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
