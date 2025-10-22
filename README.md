# 📦 Coupon Redemptions

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->

> Schema package for table **coupon_redemptions** (repo: `coupon-redemptions`).

## Files
```
schema/
  001_table.sql
  # (no deferred indexes declared in map)
  030_foreign_keys.sql
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/030_foreign_keys.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/030_foreign_keys.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/030_foreign_keys.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT UNSIGNED | — | — | AUTO_INCREMENT, PK |
| coupon_id | BIGINT UNSIGNED | NO | — |  |
| user_id | BIGINT UNSIGNED | NO | — |  |
| order_id | BIGINT UNSIGNED | NO | — |  |
| redeemed_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) |  |
| amount_applied | DECIMAL(12,2) | NO | — |  |

## Relationships
- FK → **coupons** via (coupon_id) (ON DELETE CASCADE).
- FK → **orders** via (order_id) (ON DELETE CASCADE).
- FK → **users** via (user_id) (ON DELETE CASCADE).

```mermaid
erDiagram
  COUPON_REDEMPTIONS {
    INT id PK
    INT coupon_id
    INT user_id
    INT order_id
    DATETIME redeemed_at
    DECIMAL amount_applied
  }
  COUPON_REDEMPTIONS }o--|| COUPONS : "coupon_id"
  COUPON_REDEMPTIONS }o--|| ORDERS : "order_id"
  COUPON_REDEMPTIONS }o--|| USERS : "user_id"
```

## Indexes
- No deferred indexes declared for this table.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.
