-- Active: 1724997650692@@127.0.0.1@3306@company

SELECT
    first_name AS forname,
    last_name AS surname,
    sex
FROM employee
ORDER BY sex, first_name DESC
LIMIT 5;

SELECT DISTINCT branch_name FROM branch;

SELECT COUNT(super_id)
FROM employee
WHERE
    sex = 'M'
    AND birth_day > '1970-01-01';

SELECT SUM(salary) FROM employee;

SELECT AVG(salary) FROM employee;

-- aggregation
SELECT COUNT(sex), sex FROM employee GROUP BY sex;

SELECT SUM(total_sales), emp_id FROM works_with GROUP BY emp_id;