-- Problem: Combine Two Tables
-- Difficulty: Easy
-- https://leetcode.com/problems/combine-two-tables/
DROP TABLE IF EXISTS Address;

CREATE TABLE Address (
    AddressId INT,
    PersonId INT,
    City TEXT,
    State TEXT
);
INSERT INTO Address (AddressId, PersonId, City, State) VALUES
(1, 2, 'New York', 'NY'),
(2, 3, 'Los Angeles', 'CA');
SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId;