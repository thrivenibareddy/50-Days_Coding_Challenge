CREATE DATABASE customers

USE customers
CREATE TABLE customers ( 
    customer_id INT, 
    customer_name VARCHAR(50), 
    city VARCHAR(50), 
    age INT, 
    total_spent DECIMAL(10,2), 
    number_of_orders INT 
); 

INSERT INTO customers VALUES 
(1, 'Amit', 'Bangalore', 25, 12000, 5), 
(2, 'Neha', 'Mumbai', 30, 45000, 12), 
(3, 'Raj', 'Delhi', 22, 8000, 3), 
(4, 'Sneha', 'Bangalore', 28, 60000, 15), 
(5, 'Karan', 'Mumbai', 35, 20000, 7), 
(6, 'Pooja', 'Delhi', 27, 15000, 6), 
(7, 'Arjun', 'Bangalore', 40, 70000, 20), 
(8, 'Meera', 'Mumbai', 23, 5000, 2);

# Show all customers from Bangalore
SELECT * FROM customers WHERE city = 'Bangalore';

#Display customers with total_spent > 20000  
SELECT * FROM customers WHERE total_spent > 20000;

#List customers aged between 25 and 35  
SELECT * FROM customers WHERE age BETWEEN 25 and 35;
 
# Show all customers sorted by total_spent (highest first) 
SELECT * FROM customers order by total_spent DESC; 

# Find the total revenue generated  
SELECT SUM(total_spent) AS total_revenue FROM customers;

#Find the average spending per customer  
 SELECT AVG(total_spent) AS avg_spending FROM customers;
 
#Find total spending per city
SELECT city, SUM(total_spent) AS total_spending FROM customers GROUP BY city; 
 
#Count number of customers in each city  
 select city,count(customer_id) as No_of_customers from customers
group by city;


#Count how many customers fall into each segment  
 select
case
when total_spent>50000 then 'High spent'
when total_spent between 20000 and 50000 then 'Medium spent'
else 'Low spent' end as customer_segment,
count(*) as total_customers from customers

group by customer_segment
order by Total_customers desc;

#Show cities where total spending is greater than 50000 

 SELECT city, SUM(total_spent) AS total_spending FROM customers GROUP BY city 
 HAVING SUM(total_spent) > 50000;
 