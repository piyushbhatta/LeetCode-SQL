DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees(
    id int,
    name varchar
);

INSERT INTO Employees(id, name) VALUES
('1', 'Alice'),
('7', 'Bob'),
('11', 'Meir'),
('90', 'Winston'),
('3', 'Jonathan');

SELECT * FROM Employees;

DROP TABLE IF EXISTS EmployeeUNI;

CREATE TABLE EmployeeUNI(
    id int,
    unique_id int
);

INSERT INTO EmployeeUNI(id, unique_id) VALUES
('3', '1'),
('11', '2'),
('90', '3');

SELECT * FROM EmployeeUNI;

SELECT * FROM Employees;

SELECT eU.unique_id AS uniuqe_id, e.name as name
    FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id=eu.id