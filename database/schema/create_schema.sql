-- Script will create all the necessary database objects
-- Run as shifty user

CREATE SCHEMA AUTHORIZATION shifty
  CREATE TABLE countries 
    (country_id   VARCHAR2(2) PRIMARY KEY, 
     country_name VARCHAR2(64) NOT NULL
    )
  CREATE TABLE holidays 
    (country_id   VARCHAR2(2) NOT NULL, 
     holiday_date DATE NOT NULL,
     holiday_name  VARCHAR2(64) DEFAULT '',
     CONSTRAINT fk_country_id FOREIGN KEY(country_id) REFERENCES countries(country_id),
     CONSTRAINT unique_holiday UNIQUE (country_id, holiday_date)
    )
  GRANT SELECT ON countries TO shifty_app
  GRANT SELECT ON holidays  TO shifty_app
  GRANT INSERT ON holidays  TO shifty_app
  GRANT UPDATE ON holidays  TO shifty_app
  GRANT DELETE ON holidays  TO shifty_app;
