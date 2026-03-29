#DDL
#Creating database 
create database sales;
#activate database
use sales
CREATE TABLE sales (sale_id INT PRIMARY KEY, customer_name VARCHAR(50), city VARCHAR(50), product_name VARCHAR(50),
 category VARCHAR(50), quantity INT, price DECIMAL(10,2), sale_date DATE);
describe sales
#DML
INSERT INTO Sales VALUES
(1, 'Ravi', 'Bangalore', 'Laptop', 'Electronics', 1, 60000, '2023-06-01'),
(2, 'Priya', 'Chennai', 'Mobile', 'Electronics', 2, 20000, '2023-06-03'),
(3, 'Amit', 'Delhi', 'Headphones', 'Accessories', 3, 2000, '2023-06-05'),
(4, 'Neha', 'Mumbai', 'Chair', 'Furniture', 2, 5000, '2023-06-07'),
(5, 'Ravi', 'Bangalore', 'Mobile', 'Electronics', 1, 20000, '2023-06-10'),
(6, 'Priya', 'Chennai', 'Laptop', 'Electronics', 1, 60000, '2023-06-12'),
(7, 'Amit', 'Delhi', 'Chair', 'Furniture', 4, 5000, '2023-06-15'),
(8, 'Neha', 'Mumbai', 'Headphones', 'Accessories', 2, 2000, '2023-06-18');

#DQL
select * from sales

1. Show all records from the Sales table. 
SELECT * FROM sales;

2. Display only customer names and cities. 
SELECT customer_name, city FROM sales;

3.Show product name and price.
SELECT product_name, price FROM sales;

4. Show all sales where city is 'Bangalore'.
SELECT * FROM Sales WHERE city = 'Bangalore';

5. Find all products in 'Electronics' category. 
SELECT * FROM Sales WHERE category = 'Electronics';

6. Show sales where price is greater than 10,000.
SELECT * FROM Sales WHERE price > 10000;

7. Display sales where quantity is more than 2.
SELECT * FROM sales WHERE quantity > 2;

8. Show all sales sorted by price (low to high).
SELECT * FROM Sales ORDER BY price ASC;

9. Display sales sorted by quantity (high to low).
SELECT * FROM Sales ORDER BY price DESC;

10. Show unique cities
SELECT DISTINCT city FROM sales;


 