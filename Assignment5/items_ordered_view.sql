CREATE VIEW items_ordered AS
SELECT products.product_name, 
order_items.item_id, 
order_items.item_price, 
order_items.quantity
FROM products
JOIN order_items ON order_items.product_id=products.product_id;

SELECT * FROM items_ordered;