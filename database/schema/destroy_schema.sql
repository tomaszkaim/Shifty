-- Script will destroy all the objects created in database
-- Run as DBA
-- Make sure users are already disconnected

DROP TABLE shifty.holidays;
DROP TABLE shifty.countries;

DROP USER shifty_app;
DROP USER shifty;
