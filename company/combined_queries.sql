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

SELECT empl.first_name, empl.last_name, br.branch_name
FROM employee empl
    INNER JOIN branch AS br on empl.emp_id = br.mngr_id;

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