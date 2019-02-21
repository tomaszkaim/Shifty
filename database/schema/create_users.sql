-- Script will create shifty application users (shifty with DBA role and shifty_app for the application)
-- Run this script as DBA

CREATE USER shifty IDENTIFIED BY shifty_password;
CREATE USER shifty_app IDENTIFIED BY shifty_password;

GRANT CREATE SESSION TO shifty;
GRANT DBA to shifty;

GRANT CREATE SESSION TO shifty_app;