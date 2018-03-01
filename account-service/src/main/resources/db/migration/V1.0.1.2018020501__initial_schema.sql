CREATE TABLE IF NOT EXISTS customer_activations (
  customer_id int(10) UNSIGNED NOT NULL,
  token varchar(255) NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX customer_activations_token_index (token)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS customer_groups (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  display_name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS customer_permissions (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  display_name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS customers (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  permissions text DEFAULT NULL,
  activated tinyint(1) NOT NULL DEFAULT 0,
  activation_code varchar(255) DEFAULT NULL,
  activated_at timestamp NULL DEFAULT NULL,
  last_login timestamp NULL DEFAULT NULL,
  persist_code varchar(255) DEFAULT NULL,
  reset_password_code varchar(255) DEFAULT NULL,
  first_name varchar(255) DEFAULT NULL,
  last_name varchar(255) DEFAULT NULL,
  date_of_birth date DEFAULT NULL,
  address text NOT NULL,
  postal_code varchar(15) NOT NULL DEFAULT '',
  telephone varchar(25) NOT NULL DEFAULT '',
  fax varchar(40) NOT NULL DEFAULT '',
  salt varchar(9) NOT NULL DEFAULT '',
  cart text NOT NULL,
  wishlist text NOT NULL,
  newsletter tinyint(1) NOT NULL DEFAULT 0,
  ip varchar(255) NOT NULL,
  approved tinyint(1) NOT NULL DEFAULT 0,
  safe tinyint(1) NOT NULL DEFAULT 1,
  code varchar(40) NOT NULL DEFAULT '',
  country_id int(10) UNSIGNED NOT NULL,
  region_id int(10) UNSIGNED NOT NULL,
  city_id int(10) UNSIGNED NOT NULL,
  api_token varchar(60) NOT NULL,
  remember_token varchar(60) DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  INDEX customers_activation_code_index (activation_code),
  UNIQUE INDEX customers_api_token_unique (api_token),
  INDEX customers_city_id_index (city_id),
  INDEX customers_country_id_index (country_id),
  UNIQUE INDEX customers_email_unique (email),
  INDEX customers_region_id_index (region_id),
  INDEX customers_reset_password_code_index (reset_password_code)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS customers_groups (
  customer_id int(10) UNSIGNED NOT NULL,
  group_id int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (customer_id, group_id)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_unicode_ci;



CREATE TABLE IF NOT EXISTS customer_customer_group (
  customer_group_id int(10) UNSIGNED NOT NULL,
  customer_id int(10) UNSIGNED NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (customer_group_id, customer_id),
  INDEX customer_customer_group_customer_group_id_index (customer_group_id),
  INDEX customer_customer_group_customer_id_index (customer_id),
  CONSTRAINT customer_customer_group_customer_group_id_foreign FOREIGN KEY (customer_group_id)
  REFERENCES customer_groups (id) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT customer_customer_group_customer_id_foreign FOREIGN KEY (customer_id)
  REFERENCES customers (id) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS customer_group_customer_permission (
  customer_permission_id int(10) UNSIGNED NOT NULL,
  customer_group_id int(10) UNSIGNED NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (customer_permission_id, customer_group_id),
  INDEX customer_group_customer_permission_customer_group_id_index (customer_group_id),
  INDEX customer_group_customer_permission_customer_permission_id_index (customer_permission_id),
  CONSTRAINT customer_group_foreign FOREIGN KEY (customer_group_id)
  REFERENCES customer_groups (id) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT customer_permission_foreign FOREIGN KEY (customer_permission_id)
  REFERENCES customer_permissions (id) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_unicode_ci;
