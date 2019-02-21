-- Script will create sample data for the application
-- Execute only in TEST environment
-- Run as shifty user

INSERT INTO holidays VALUES('PL', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('PL', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');
COMMIT;