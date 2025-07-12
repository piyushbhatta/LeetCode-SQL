CREATE TABLE Visits(
    visit_id int,
    customer_id int
);

CREATE TABLE Transactions(
    transaction_id int,
    visit_id int,
    amount int
);

INSERT INTO Visits(visit_id, customer_id) VALUES
 ('1', '23'),
 ('2', '9'),
 ('4', '30'),
 ('5', '54'),
 ('6', '96'),
 ('7', '54'),
 ('8', '54');

insert into Transactions (transaction_id, visit_id, amount) values ('2', '5', '310');
insert into Transactions (transaction_id, visit_id, amount) values ('3', '5', '300');
insert into Transactions (transaction_id, visit_id, amount) values ('9', '5', '200');
insert into Transactions (transaction_id, visit_id, amount) values ('12', '1', '910');
insert into Transactions (transaction_id, visit_id, amount) values ('13', '2', '970');

SELECT * FROM Transactions;

SELECT V.customer_id, COUNT(V.customer_id) AS count_no_trans
    FROM Visits as V LEFT JOIN Transactions as T ON V.visit_id=T.visit_id
    WHERE T.transaction_id IS NULL
    GROUP BY V.customer_id