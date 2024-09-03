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

SELECT employee.first_name, employee.last_name, branch.branch_name
FROM employee
    RIGHT JOIN branch on employee.emp_id = branch.mngr_id;