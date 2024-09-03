-- Active: 1724997650692@@127.0.0.1@3306@company

SELECT
    first_name AS forname,
    last_name AS surname,
    sex
FROM employee
ORDER BY sex, first_name DESC
LIMIT 5;

SELECT DISTINCT branch_name FROM branch;