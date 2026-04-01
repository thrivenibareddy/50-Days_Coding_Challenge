# 🛒 E-Commerce SQL Analysis Project

## 📌 Overview

This project demonstrates SQL concepts using a simple **E-Commerce database**. It includes table creation, data insertion, and various queries to analyze customer behavior, orders, and payments.


## 🗂️ Database Structure

### 1. Customers Table

Stores customer details.

* `customer_id` (Primary Key)
* `customer_name`
* `city`

### 2. Orders Table

Stores order details.

* `order_id` (Primary Key)
* `customer_id`
* `order_date`
* `amount`

### 3. Payments Table

Stores payment information.

* `payment_id` (Primary Key)
* `order_id`
* `payment_status`



## ⚙️ Features & SQL Concepts Used

* ✅ INNER JOIN
* ✅ LEFT JOIN
* ✅ Aggregations (`SUM`, `MAX`)
* ✅ GROUP BY & HAVING
* ✅ Subqueries & Filtering
* ✅ Handling NULL values
* ✅ Data integrity checks



## 📊 Key Queries & Insights

### 🔹 Customers with Orders

Retrieve customers who have placed orders.

```sql
SELECT c.customer_name, o.order_id, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
```



### 🔹 All Customers (Including No Orders)

```sql
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
```



### 🔹 Invalid Orders (No Matching Customer)

```sql
SELECT o.*
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
```



### 🔹 Customers Without Orders

```sql
SELECT c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```



### 🔹 Orders Without Payments

```sql
SELECT o.order_id, o.amount
FROM orders o
LEFT JOIN payments p
ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;
```



### 🔹 Total Spending per Customer

```sql
SELECT c.customer_name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
```



### 🔹 Customers with All Payments Completed

```sql
SELECT c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) = 
       SUM(CASE WHEN p.payment_status = 'Completed' THEN 1 ELSE 0 END);
```



### 🔹 Highest Order per Customer

```sql
SELECT c.customer_name, MAX(o.amount) AS highest_order
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
```



### 🔹 Top 2 Customers by Spending

```sql
SELECT c.customer_name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 2;
```



## ⚠️ Data Issues Identified

* Order with `customer_id = 5` does not exist in Customers table
* Missing payment records for some orders



## 🚀 Improvements

* Add **Foreign Key Constraints** for data integrity
* Handle NULL values using `COALESCE()`
* Add indexes for performance optimization



## 🧠 Learning Outcomes

* Strong understanding of SQL joins
* Real-world data analysis scenarios
* Query optimization and data validation



