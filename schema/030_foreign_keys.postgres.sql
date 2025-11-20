-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  coupon_redemptions
ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_coupon FOREIGN KEY (tenant_id, coupon_id) REFERENCES coupons(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_order  FOREIGN KEY (tenant_id, order_id)  REFERENCES orders(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE coupon_redemptions ADD CONSTRAINT fk_cr_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
