# coupon_redemptions

Records of coupon usage per order and user.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| amount_applied | NUMERIC(12,2) | NO |  | Applied discount amount. |
| coupon_id | BIGINT | NO |  | Coupon (FK coupons.id). |
| id | BIGINT | NO |  | Surrogate primary key. |
| order_id | BIGINT | NO |  | Order (FK orders.id). |
| redeemed_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When coupon was redeemed (UTC). |
| user_id | BIGINT | NO |  | User (FK users.id). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_cr_tenant_order_coupon | tenant_id, order_id, coupon_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_cr_coupon | coupon_id | CREATE INDEX idx_cr_coupon ON coupon_redemptions (coupon_id) |
| idx_cr_order | order_id | CREATE INDEX idx_cr_order  ON coupon_redemptions (order_id) |
| idx_cr_tenant_coupon | tenant_id,coupon_id | CREATE INDEX idx_cr_tenant_coupon ON coupon_redemptions (tenant_id, coupon_id) |
| idx_cr_tenant_order | tenant_id,order_id | CREATE INDEX idx_cr_tenant_order  ON coupon_redemptions (tenant_id, order_id) |
| idx_cr_tenant_user | tenant_id,user_id | CREATE INDEX idx_cr_tenant_user   ON coupon_redemptions (tenant_id, user_id) |
| idx_cr_user | user_id | CREATE INDEX idx_cr_user   ON coupon_redemptions (user_id) |
| ux_cr_tenant_order_coupon | tenant_id,order_id,coupon_id | CREATE UNIQUE INDEX ux_cr_tenant_order_coupon ON coupon_redemptions (tenant_id, order_id, coupon_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_cr_coupon | tenant_id,coupon_id | coupons(tenant_id,id) | ON DELETE CASCADE |
| fk_cr_order | tenant_id,order_id | orders(tenant_id,id) | ON DELETE CASCADE |
| fk_cr_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |
| fk_cr_user | user_id | users(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_cr_tenant_order_coupon | tenant_id, order_id, coupon_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_cr_coupon | coupon_id | CREATE INDEX IF NOT EXISTS idx_cr_coupon ON coupon_redemptions (coupon_id) |
| idx_cr_order | order_id | CREATE INDEX IF NOT EXISTS idx_cr_order  ON coupon_redemptions (order_id) |
| idx_cr_tenant_coupon | tenant_id,coupon_id | CREATE INDEX IF NOT EXISTS idx_cr_tenant_coupon ON coupon_redemptions (tenant_id, coupon_id) |
| idx_cr_tenant_order | tenant_id,order_id | CREATE INDEX IF NOT EXISTS idx_cr_tenant_order  ON coupon_redemptions (tenant_id, order_id) |
| idx_cr_tenant_user | tenant_id,user_id | CREATE INDEX IF NOT EXISTS idx_cr_tenant_user   ON coupon_redemptions (tenant_id, user_id) |
| idx_cr_user | user_id | CREATE INDEX IF NOT EXISTS idx_cr_user   ON coupon_redemptions (user_id) |
| ux_cr_tenant_order_coupon | tenant_id,order_id,coupon_id | CREATE UNIQUE INDEX IF NOT EXISTS ux_cr_tenant_order_coupon ON coupon_redemptions (tenant_id, order_id, coupon_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_cr_coupon | tenant_id,coupon_id | coupons(tenant_id,id) | ON DELETE CASCADE |
| fk_cr_order | tenant_id,order_id | orders(tenant_id,id) | ON DELETE CASCADE |
| fk_cr_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |
| fk_cr_user | user_id | users(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_coupon_redemptions | mysql | algorithm=MERGE, security=INVOKER | [packages\coupon-redemptions\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/coupon-redemptions/schema/040_views.mysql.sql) |
| vw_coupon_redemptions | postgres |  | [packages\coupon-redemptions\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/coupon-redemptions/schema/040_views.postgres.sql) |
