CREATE TABLE IF NOT EXISTS countries (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  code char(2) NOT NULL,
  active tinyint(1) NOT NULL DEFAULT 1,
  name varchar(255) NOT NULL,
  slug varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX countries_code_unique (code),
  UNIQUE INDEX countries_slug_unique (slug)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS regions (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  country_code char(2) NOT NULL,
  active tinyint(1) NOT NULL DEFAULT 1,
  name varchar(255) NOT NULL,
  slug varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT regions_country_code_foreign FOREIGN KEY (country_code)
  REFERENCES countries (code) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS cities (
  id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  country_code char(2) NOT NULL,
  region_id int(10) UNSIGNED NOT NULL,
  active tinyint(1) NOT NULL DEFAULT 1,
  name varchar(255) NOT NULL,
  slug varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  INDEX cities_region_id_index (region_id),
  CONSTRAINT cities_country_code_foreign FOREIGN KEY (country_code)
  REFERENCES countries (code) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT cities_region_id_foreign FOREIGN KEY (region_id)
  REFERENCES regions (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_unicode_ci;
