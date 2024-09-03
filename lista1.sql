CREATE DATABASE IF NOT EXISTS ecommerce_22C;
use ecommerce_22C;


exercicio 1

SELECT 
    Orders.order_id, 
    Orders.order_date, 
    Customers.full_name, 
    Customers.email
FROM 
    Orders
JOIN 
    Customers 
ON 
    Orders.customer_id = Customers.customer_id;
    
    exercicio 2
    
    SELECT 
    Products.product_name, 
    Order_Items.quantity
    FROM 
    Order_Items
    JOIN 
    Orders 
    ON 
    Order_Items.order_id = Orders.order_id
    JOIN 
     Products 
    ON 
    Order_Items.product_id = Products.product_id
    WHERE 
    Orders.customer_id = 1;
    
    
    exercicio 3
    
    SELECT 
    Customers.full_name, 
    SUM (Order_Items.quantity * Products.price) AS total_spent
   FROM 
    Customers
   JOIN 
    Orders 
   ON 
    Customers.customer_id = Orders.customer_id
   JOIN 
    Order_Items 
   ON 
    Orders.order_id = Order_Items.order_id
  JOIN 
    Products 
  ON 
    Order_Items.product_id = Products.product_id
 GROUP BY 
    Customers.full_name;
    
    
    exercicio 4
    
    SELECT 
    Customers.full_name
   FROM 
    Customers
   LEFT JOIN 
    Orders 
   ON 
    Customers.customer_id = Orders.customer_id
   WHERE 
    Orders.order_id IS NULL;
    
    exercicio 5
    
    SELECT 
    Products.product_name, 
    SUM(Order_Items.quantity) AS total_quantity_sold
   FROM 
    Order_Items
   JOIN 
    Products 
   ON 
    Order_Items.product_id = Products.product_id
   GROUP BY 
    Products.product_name
   ORDER BY 
    total_quantity_sold DESC;