-- Active: 1724997650692@@127.0.0.1@3306@company
SELECT first_name AS 'first_column', birth_day AS 'second_column'
FROM employee
UNION
SELECT branch_name, branch_id
FROM branch
UNION
SELECT last_name, sex
FROM employee;

SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier
UNION
SELECT last_name, branch_id
FROM employee
UNION
SELECT client_name, client.branch_id
FROM client;

INSERT INTO branch VALUES (4, "Buffalo", NULL, NULL);

SELECT first_name, last_name
FROM employee
WHERE
    emp_id IN (
        SELECT emp_id
        FROM works_with
        WHERE
            total_sales > 25000
    );

SELECT client_name
FROM client
WHERE
    branch_id = (
        SELECT branch_id
        FROM branch
        WHERE
            mngr_id = 102 -- LIMIT 1 (sequring from more than one result when using =)
    );

SELECT first_name
FROM employee
WHERE
    sex = 'M'
    AND emp_id IN (
        SELECT emp_id
        FROM works_with
        WHERE
            client_id = 403
            AND total_sales > 10000
    );

-- INNER JOINS
SELECT empl.first_name, empl.last_name, br.branch_name
FROM employee empl
    INNER JOIN branch AS br ON empl.emp_id = br.mngr_id;

-- OUTER JOINS
SELECT *
FROM employee empl
    RIGHT JOIN branch AS br ON empl.emp_id = br.mngr_id;

-- SELF JOINS
SELECT
    empl_1.emp_id,
    empl_1.first_name,
    empl_1.last_name,
    empl_2.emp_id AS santa_id,
    empl_2.first_name AS santa_first_name,
    empl_2.last_name AS santa_last_name
FROM
    employee empl_1
    LEFT JOIN employee empl_2 ON empl_1.emp_id + 1 = empl_2.emp_id;

SELECT * FROM client;

SELECT * FROM works_with;

SELECT employee.first_name, employee.last_name, branch.branch_name, works_with.client_id, works_with.total_sales
FROM
    employee
    INNER JOIN branch ON employee.emp_id = branch.mngr_id
    INNER JOIN works_with ON employee.emp_id = works_with.emp_id;

SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name
FROM employee
    INNER JOIN branch ON employee.branch_id = branch.branch_id;

SELECT * FROM branch;

SELECT * FROM employee;