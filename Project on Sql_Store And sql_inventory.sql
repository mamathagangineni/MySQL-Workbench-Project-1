USE sql_store;

SELECT * FROM customers;

SELECT * from customers
WHERE customer_id = 1 
ORDER BY first_name;

SELECT
  last_name,
  first_name,
  points,
  (points + 10)
  FROM
  CUSTOMERS;
  
# TASK 1
 SELECT
  last_name,
  first_name,
  points,
  (points * 10) + 100
  FROM
  CUSTOMERS; 
  
  SELECT
  last_name,
  first_name,
  points,
  (points + 10) * 100 AS discount_factor
  FROM
  CUSTOMERS; 
  
 # TASK 2
 SELECT * FROM products;
  
  SELECT name, unit_price, (unit_price * (1.1)) AS new_price
  FROM products;
  
  SELECT name, unit_price, (unit_price + unit_price * 10/100 ) AS increase_price
  FROM products;
 
# TASK 3 
SELECT customer_id, first_name, birth_date 
FROM  CUSTOMERS 
WHERE birth_date > '1990-01-01'; 

USE sql_inventory;
SELECT * FROM products;
SELECT product_id, name, (quantity_in_stock*unit_price)
FROM products;

# TASK 4
SELECT product_id, name, (quantity_in_stock*unit_price) as MaxAmount
FROM products
ORDER BY (quantity_in_stock*unit_price) DESC LIMIT 1;
                      # OR
SELECT name , amount FROM (
SELECT  name ,  max(quantity_in_stock * unit_price)  AS amount
	  FROM
      products GROUP BY name ORDER BY amount DESC) AS max1  LIMIT 1;
  
# TASK 5
SELECT * FROM products 
ORDER BY unit_price DESC LIMIT 1;

 USE sql_store;
select * from CUSTOMERS;

# TASK 6
select first_name,last_name,address,birth_date 
from CUSTOMERS
ORDER BY birth_date ASC LIMIT 1;






