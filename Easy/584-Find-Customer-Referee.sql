DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    id INT,
    name VARCHAR(100),
    referee_id INT
);
INSERT INTO Customers(id, name, referee_id) VALUES
(1,'John',null),
(2,'Piyush',null),
(3, 'Sahil', 1),
(4,'Disha',2),
(5,'Saksham',null),
(6,'Samriddhi',2);

SELECT name FROM Customers WHERE referee_id<>2 OR referee_id IS NULL
