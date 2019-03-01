-- Script will create sample data for the application
-- Execute only in TEST environment
-- Run as shifty user
TRUNCATE TABLE shifty.holidays;

INSERT INTO holidays VALUES('PL', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('PL', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');
INSERT INTO holidays VALUES('FI', TO_DATE('24/12/2019', 'DD/MM/YYYY'), 'Christmas Eve');
INSERT INTO holidays VALUES('FI', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('FI', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');

INSERT INTO countries VALUES('PL', 'Poland');
INSERT INTO countries VALUES('FI', 'Finaland');

INSERT INTO members VALUES('1', 'Martyna Przyborek', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));
INSERT INTO members VALUES('2', 'Olga Bryś', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));
INSERT INTO members VALUES('3', 'Tomasz Kaim', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));
INSERT INTO members VALUES('4', 'Samuli Latvala', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));

INSERT INTO shift_definition VALUES('Early Shift', '06:30', '14:30');
INSERT INTO shift_definition VALUES('Late Shift', '09:00', '17:00');

COMMIT;