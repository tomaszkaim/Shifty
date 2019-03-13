-- Script will create sample data for the application
-- Execute only in TEST environment
-- Run as shifty user
TRUNCATE TABLE shifty.holidays;

INSERT INTO countries VALUES('PL', 'Poland');
INSERT INTO countries VALUES('FI', 'Finaland');
INSERT INTO countries VALUES('NO', 'Norway');
INSERT INTO countries VALUES('SE', 'Sweden');

INSERT INTO holidays VALUES('PL', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('PL', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');
INSERT INTO holidays VALUES('FI', TO_DATE('24/12/2019', 'DD/MM/YYYY'), 'Christmas Eve');
INSERT INTO holidays VALUES('FI', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('FI', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');
INSERT INTO holidays VALUES('PL', TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'New Year Day');
INSERT INTO holidays VALUES('PL', TO_DATE('06/01/2019', 'DD/MM/YYYY'), 'Epiphany');
INSERT INTO holidays VALUES('PL', TO_DATE('21/04/2019', 'DD/MM/YYYY'), 'Easter');
INSERT INTO holidays VALUES('PL', TO_DATE('22/04/2019', 'DD/MM/YYYY'), 'Easter Monday');
INSERT INTO holidays VALUES('PL', TO_DATE('01/05/2019', 'DD/MM/YYYY'), 'Labour Day');
INSERT INTO holidays VALUES('PL', TO_DATE('03/05/2019', 'DD/MM/YYYY'), 'Constitution Day Poland');
INSERT INTO holidays VALUES('PL', TO_DATE('20/06/2019', 'DD/MM/YYYY'), 'Corpus Christi');
INSERT INTO holidays VALUES('PL', TO_DATE('15/08/2019', 'DD/MM/YYYY'), 'Assumption Day');
INSERT INTO holidays VALUES('PL', TO_DATE('01/11/2019', 'DD/MM/YYYY'), 'All Saint's Day);
INSERT INTO holidays VALUES('PL', TO_DATE('11/11/2019', 'DD/MM/YYYY'), 'Independence Day Poland');
INSERT INTO holidays VALUES('FI', TO_DATE('06/01/2019', 'DD/MM/YYYY'), 'Epiphany');
INSERT INTO holidays VALUES('FI', TO_DATE('21/04/2019', 'DD/MM/YYYY'), 'Easter');
INSERT INTO holidays VALUES('FI', TO_DATE('22/04/2019', 'DD/MM/YYYY'), 'Easter Monday');
INSERT INTO holidays VALUES('FI', TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'New Year Day');
INSERT INTO holidays VALUES('FI', TO_DATE('19/04/2019', 'DD/MM/YYYY'), 'Good Friday');
INSERT INTO holidays VALUES('FI', TO_DATE('01/05/2019', 'DD/MM/YYYY'), 'Labour Day');
INSERT INTO holidays VALUES('FI', TO_DATE('10/05/2019', 'DD/MM/YYYY'), 'Ascesion Day');
INSERT INTO holidays VALUES('FI', TO_DATE('20/05/2019', 'DD/MM/YYYY'), 'Whitsun');
INSERT INTO holidays VALUES('FI', TO_DATE('22/06/2019', 'DD/MM/YYYY'), 'Midsummer Eve');
INSERT INTO holidays VALUES('FI', TO_DATE('23/06/2019', 'DD/MM/YYYY'), 'Midsummer Day');
INSERT INTO holidays VALUES('FI', TO_DATE('02/11/2019', 'DD/MM/YYYY'), 'All Saints Day');
INSERT INTO holidays VALUES('FI', TO_DATE('06/12/2019', 'DD/MM/YYYY'), 'Independence Day Finland');
INSERT INTO holidays VALUES('SE', TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'New Year Day');
INSERT INTO holidays VALUES('SE', TO_DATE('06/01/2019', 'DD/MM/YYYY'), 'Epiphany');
INSERT INTO holidays VALUES('SE', TO_DATE('19/04/2019', 'DD/MM/YYYY'), 'Good Friday');
INSERT INTO holidays VALUES('SE', TO_DATE('21/04/2019', 'DD/MM/YYYY'), 'Easter');
INSERT INTO holidays VALUES('SE', TO_DATE('22/04/2019', 'DD/MM/YYYY'), 'Easter Monday');
INSERT INTO holidays VALUES('SE', TO_DATE('01/05/2019', 'DD/MM/YYYY'), 'Labour Day');
INSERT INTO holidays VALUES('SE', TO_DATE('10/05/2019', 'DD/MM/YYYY'), 'Ascesion Day');
INSERT INTO holidays VALUES('SE', TO_DATE('20/05/2019', 'DD/MM/YYYY'), 'Whitsun');
INSERT INTO holidays VALUES('SE', TO_DATE('06/06/2019', 'DD/MM/YYYY'), 'Swedish National Holiday');
INSERT INTO holidays VALUES('SE', TO_DATE('23/06/2019', 'DD/MM/YYYY'), 'Midsummer Day');
INSERT INTO holidays VALUES('SE', TO_DATE('02/11/2019', 'DD/MM/YYYY'), 'All Saints Day');
INSERT INTO holidays VALUES('SE', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('SE', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');
INSERT INTO holidays VALUES('NO', TO_DATE('01/01/2019', 'DD/MM/YYYY'), 'New Year Day');
INSERT INTO holidays VALUES('NO', TO_DATE('29/03/2019', 'DD/MM/YYYY'), 'Maundy Thursday');
INSERT INTO holidays VALUES('NO', TO_DATE('19/04/2019', 'DD/MM/YYYY'), 'Good Friday');
INSERT INTO holidays VALUES('NO', TO_DATE('21/04/2019', 'DD/MM/YYYY'), 'Easter');
INSERT INTO holidays VALUES('NO', TO_DATE('22/04/2019', 'DD/MM/YYYY'), 'Easter Monday');
INSERT INTO holidays VALUES('NO', TO_DATE('01/05/2019', 'DD/MM/YYYY'), 'Labour Day');
INSERT INTO holidays VALUES('NO', TO_DATE('10/05/2019', 'DD/MM/YYYY'), 'Ascesion Day');
INSERT INTO holidays VALUES('NO', TO_DATE('17/05/2019', 'DD/MM/YYYY'), 'Norway National Holiday');
INSERT INTO holidays VALUES('NO', TO_DATE('20/05/2019', 'DD/MM/YYYY'), 'Whitsun');
INSERT INTO holidays VALUES('NO', TO_DATE('21/05/2019', 'DD/MM/YYYY'), 'Whit Monday');
INSERT INTO holidays VALUES('NO', TO_DATE('25/12/2019', 'DD/MM/YYYY'), 'Christmas Day 1');
INSERT INTO holidays VALUES('NO', TO_DATE('26/12/2019', 'DD/MM/YYYY'), 'Christmas Day 2');

INSERT INTO members VALUES('1', 'Martyna Przyborek', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));
INSERT INTO members VALUES('2', 'Olga Bryś', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));
INSERT INTO members VALUES('3', 'Tomasz Kaim', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));
INSERT INTO members VALUES('4', 'Samuli Latvala', TO_DATE('01/01/2019', 'DD/MM/YYYY;'), TO_DATE('31/12/2019', 'DD/MM/YYYY'));

INSERT INTO shift_definition VALUES('1', 'Early Shift', '06:30', '14:30');
INSERT INTO shift_definition VALUES('2', 'Late Shift', '09:00', '17:00');

COMMIT;)