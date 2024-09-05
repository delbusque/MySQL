-- Active: 1724997650692@@127.0.0.1@3306@giraffe

CREATE Table Trigger_insert (message VARCHAR(1000))

DELIMITER $$

CREATE TRIGGER my_trigger BEFORE
INSERT
    ON persons FOR EACH ROW BEGIN
INSERT INTO
    trigger_insert
VALUES('added new person');
END $$

DELIMITER;

INSERT INTO persons VALUES ( 11, "Jackson", "Jones", "Preston" );

CREATE TRIGGER my_trigger_1 BEFORE
INSERT
    ON persons FOR EACH ROW BEGIN
INSERT INTO
    trigger_insert
VALUES(NEW.City);
END $$

CREATE TRIGGER university_trigger_ AFTER
INSERT ON students FOR EACH ROW BEGIN

IF NEW.university = 'PU' THEN
INSERT INTO trigger_insert VALUES('Go to Plovdiv ...');
ELSEIF NEW.university = 'SoftUni' THEN
INSERT INTO trigger_insert VALUES('I`m Hi-Tech ...');
ELSE
INSERT INTO trigger_insert VALUES('Other way !');

END IF;
END $$

INSERT INTO students VALUES (18, 'Benn', 'Don', 'softuni');

DROP TRIGGER university_trigger;