USE my_guitar_shop;

DROP TRIGGER IF EXISTS products_before_update;

DELIMITER //

CREATE TRIGGER products_before_update
	BEFORE UPDATE ON products
	FOR EACH ROW
BEGIN
DECLARE myVar int;

SELECT NEW.list_price
INTO myVar
FROM products
WHERE product_id = NEW.product_id;

IF myVar > 1200 THEN
	SIGNAL SQLSTATE '45000' SET message_text = 'Unit Price is more than 1200';
ELSEIF myVar < 100 THEN
	SIGNAL SQLSTATE '45000' SET message_text = 'Unit Price is less than 100';
ELSE
	SET myVar = NEW.list_price;
END IF;

END//

DELIMITER ;

SELECT * FROM products;

UPDATE products
SET list_price = 777
WHERE product_id = 1;
