DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales(
    sale_id int,
    product_id int,
    year int,
    quantity int,
    price int
);

INSERT INTO Sales(sale_id, product_id, year, quantity, price) VALUES
('1', '100', '2008', '10', '5000'),
('2', '100', '2009', '12', '5000'),
('7', '200', '2011', '15', '9000');

CREATE TABLE IF NOT EXISTS Product(
    product_id int,
    product_name varchar(10)
);

INSERT INTO Product(product_id, product_name) VALUES
('100', 'Nokia'),
('200', 'Apple'),
('300', 'Samsung');

SELECT P.product_name, S.year, S.price
    FROM Sales AS S LEFT JOIN Product AS P
ON S.product_id=P.product_id

