DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    product_id INTEGER,
    low_fats TEXT CHECK (low_fats IN ('Y', 'N')),
    recyclable TEXT CHECK (recyclable IN ('Y', 'N'))
);

INSERT INTO Products (product_id, low_fats, recyclable) VALUES (0, 'Y', 'N');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (1, 'Y', 'Y');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (2, 'N', 'Y');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (3, 'Y', 'Y');
INSERT INTO Products (product_id, low_fats, recyclable) VALUES (4, 'N', 'N');

SELECT
    product_id
FROM
    products
WHERE
    low_fats='Y' AND recyclable='Y'