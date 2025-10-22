-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: coupon_redemptions
CREATE TABLE IF NOT EXISTS coupon_redemptions (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  coupon_id BIGINT UNSIGNED NOT NULL,
  user_id BIGINT UNSIGNED NOT NULL,
  order_id BIGINT UNSIGNED NOT NULL,
  redeemed_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  amount_applied DECIMAL(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
