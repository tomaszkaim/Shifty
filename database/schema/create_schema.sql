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
  CREATE TABLE members
    (member_id NUMBER(6,0) PRIMARY KEY,
    member_name VARCHAR2(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL
    )
    CREATE TABLE shift_definition
    (shift_name VARCHAR2(15) PRIMARY KEY,
    start_time VARCHAR2(6) NOT NULL,
    end_time VARCHAR2(6) NOT NULL
    )
    CREATE TABLE shifts
    (shift_name VARCHAR2(15) NOT NULL,
    member_id NUMBER(6,0),
    CONSTRAINT fk_member_id FOREIGN KEY(member_id) REFERENCES members(member_id),
    CONSTRAINT fk_shift_name FOREIGN KEY(shift_name) REFERENCES shift_definition(shift_name)
    )
  GRANT SELECT ON countries TO shifty_app
  GRANT SELECT ON holidays  TO shifty_app
  GRANT INSERT ON holidays  TO shifty_app
  GRANT UPDATE ON holidays  TO shifty_app
  GRANT DELETE ON holidays  TO shifty_app;
