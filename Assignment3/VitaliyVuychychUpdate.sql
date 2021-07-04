INSERT INTO customers
VALUES (DEFAULT, 'myemail@gmail.com', 'RandomPassword!@123-pass', 'Vitaliy', 'Vuychych', DEFAULT, DEFAULT);
SELECT * FROM customers;

CREATE TABLE NewProductPrices
LIKE products;

INSERT INTO newproductprices
SELECT * FROM products;

SELECT * FROM newproductprices;

UPDATE newproductprices
SET discount_percent = 28.00
WHERE discount_percent = 30.00;

SELECT * FROM newproductprices;
































































