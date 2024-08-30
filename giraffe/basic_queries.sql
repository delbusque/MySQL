describe students;

select * from students;

insert INTO students VALUES (2, "Topi", "Singapoor");

alter Table students add major VARCHAR(20);

alter table students add tests DECIMAL(3, 3);

alter Table students drop tests;

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

DESCRIBE persons;

alter table persons drop address;