# 📊 Customer Segmentation using SQL

## 📌 Project Overview

This project demonstrates how to analyze customer data and segment customers based on their spending behavior using **basic SQL concepts** such as filtering, aggregation, grouping, sorting, and conditional logic.

The goal is to extract meaningful insights that help in understanding customer value and business performance.


## 🗂️ Dataset Information

### Table: `customers`

| Column Name      | Data Type     | Description                    |
| ---------------- | ------------- | ------------------------------ |
| customer_id      | INT           | Unique ID for each customer    |
| customer_name    | VARCHAR(50)   | Customer name                  |
| city             | VARCHAR(50)   | Customer's city                |
| age              | INT           | Customer age                   |
| total_spent      | DECIMAL(10,2) | Total amount spent by customer |
| number_of_orders | INT           | Number of orders placed        |



## 🛠️ SQL Operations Used

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* CASE
* HAVING
* Aggregate Functions (SUM, AVG, COUNT)



## 📥 Sample Data

```sql
INSERT INTO customers VALUES 
(1, 'Amit', 'Bangalore', 25, 12000, 5), 
(2, 'Neha', 'Mumbai', 30, 45000, 12), 
(3, 'Raj', 'Delhi', 22, 8000, 3), 
(4, 'Sneha', 'Bangalore', 28, 60000, 15), 
(5, 'Karan', 'Mumbai', 35, 20000, 7), 
(6, 'Pooja', 'Delhi', 27, 15000, 6), 
(7, 'Arjun', 'Bangalore', 40, 70000, 20), 
(8, 'Meera', 'Mumbai', 23, 5000, 2);
```



## 🔍 Key Analysis & Queries

### 1. Basic Filtering

* Customers from Bangalore
* Customers with spending > 20,000
* Customers aged between 25–35

### 2. Sorting & Aggregation

* Sort customers by highest spending
* Total revenue calculation
* Average customer spending

### 3. Grouping Insights

* Total spending per city
* Number of customers per city

### 4. Customer Segmentation

Customers are categorized into:

* **High Value** → Spending ≥ 50,000
* **Medium Value** → 20,000 – 49,999
* **Low Value** → < 20,000

### 5. Advanced Filtering

* Cities with total spending greater than 50,000



## 📈 Key Insights

* Bangalore generates the **highest revenue**
* High-value customers contribute significantly to total sales
* Mumbai has moderate spending distribution
* Delhi has comparatively lower spending




