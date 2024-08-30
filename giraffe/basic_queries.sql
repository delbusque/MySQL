CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

DESCRIBE persons;

alter table persons drop address;

insert into
    persons (PersonID, LastName, FirstName)
values (2, "Pechev", "Ventsislav");

select * from persons;

create table students (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    major VARCHAR(30) UNIQUE,
    PRIMARY KEY (student_id)
);

alter Table students add university VARCHAR(40) DEFAULT 'undecided';

describe students;

DROP Table students;

insert INTO students VALUES (2, "Ton", "Mio", "PU");

insert INTO students (name, major) VALUES ('Ben', 'Geology');

insert INTO
    students (name, major, university)
VALUES ('Ben', 'Python', 'SoftUni');

select * from students;

alter table students add tests DECIMAL(3, 3);

alter Table students drop tests;