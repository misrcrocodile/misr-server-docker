
DROP DATABASE IF EXISTS nextcloud_db;
CREATE DATABASE nextcloud_db;
GRANT ALL PRIVILEGES ON nextcloud_db.* TO 'nc_user'@'%' IDENTIFIED BY 'nc_password' WITH GRANT OPTION;

-- DROP DATABASE IF EXISTS wp_db;
-- CREATE DATABASE wp_db;
-- DROP USER IF EXISTS 'wp_user'@'localhost';
-- GRANT ALL PRIVILEGES ON wp_db.* TO 'wp_user'@'%' IDENTIFIED BY 'wp_password' WITH GRANT OPTION;

-- DROP DATABASE IF EXISTS piwigo_db;
-- CREATE DATABASE piwigo_db;
-- GRANT ALL PRIVILEGES ON piwigo_db.* TO 'piwigo_user'@'%' IDENTIFIED BY 'piwigo_password' WITH GRANT OPTION;


-- DROP DATABASE IF EXISTS STOCK_DB;
-- CREATE DATABASE STOCK_DB;
-- GRANT ALL PRIVILEGES ON STOCK_DB.* TO 'STOCK_USER'@'%' IDENTIFIED BY '@YOUR_PASSWORD_HERE1' WITH GRANT OPTION;


-- CONNECT STOCK_DB;

-- DROP TABLE IF EXISTS STOCK_HISTORY;
-- CREATE TABLE STOCK_HISTORY (
--   code VARCHAR(50) NOT NULL,
--   time NUMERIC NOT NULL,
--   high REAL,
--   low REAL,
--   open REAL,
--   close REAL,
--   volume REAL,
--   macd_macd REAL,
--   macd_histogram REAL,
--   macd_signal REAL,
--   rsi14 REAL,
--   ma9 REAL,
--   ma20 REAL,
--   ma200 REAL,
--   mfi14 REAL,
--   vol20 REAL,
--   PRIMARY KEY(code,time));

-- # Add index to table
-- ALTER TABLE STOCK_HISTORY ADD INDEX (time);
-- ALTER TABLE STOCK_HISTORY ADD INDEX (code);
-- ALTER TABLE STOCK_HISTORY ADD INDEX (time, code);

flush privileges;