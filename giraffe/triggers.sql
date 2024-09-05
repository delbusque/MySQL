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