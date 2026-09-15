-- SQL WINDOW FUNCTION PRACTICE
-- DATA SOURCE : OLIST

-- This shows the max_payment amount in across the entire dataset (0VER () clause)
SELECT TOP 100
	c.*,
	max(p.payment_value) over() as max_payment
FROM bronze.olist_customers_dataset c
JOIN bronze.olist_orders_dataset o
ON c.customer_id = o.customer_id
JOIN bronze.olist_order_payments_dataset p
ON o.order_id = p.order_id


-- (PARTITION BY clause ())
SELECT TOP 100
	c.*,
	SUM(i.price + i.freight_value) over(partition by customer_state) as total_order_value
FROM bronze.olist_customers_dataset c
JOIN bronze.olist_orders_dataset o
ON c.customer_id = o.customer_id
JOIN bronze.olist_order_items_dataset i
ON o.order_id = i.order_id;
 
