# Insurance Claims Analysis (SQL Project)

## 📌 Project Overview

This project focuses on analyzing an insurance claims dataset using SQL. It demonstrates the use of **subqueries**, including scalar, correlated, and nested subqueries, to solve real-world business problems.

The dataset contains details about policyholders, claim amounts, claim status, and policy types.

## 📂 Dataset Description

Table: `claims`

| Column Name   | Data Type   | Description                          |
| ------------- | ----------- | ------------------------------------ |
| claim_id      | INT         | Unique ID for each claim             |
| policy_holder | VARCHAR(50) | Name of the policy holder            |
| policy_type   | VARCHAR(50) | Type of policy (Health, Vehicle etc) |
| claim_amount  | INT         | Amount claimed                       |
| claim_date    | DATE        | Date of claim                        |
| status        | VARCHAR(20) | Claim status (Approved/Rejected)     |

## 🎯 Objectives

* Analyze claim data using SQL
* Practice **subqueries** in real-world scenarios
* Understand filtering, aggregation, and conditional logic

## 🧠 Tasks Implemented

### ✅ Task 1: Claims Above Average Amount

Find claims where the claim amount is greater than the overall average claim amount.

### ✅ Task 2: Policy Holders with Approved Claims

Identify policy holders who have at least one approved claim.

### ✅ Task 3: Claims Above Individual Average

Find claims where the claim amount is greater than the respective policy holder’s average claim amount.

### ✅ Task 4: Display Claims with Overall Average

Show each claim along with the overall average claim amount.

## 🛠️ SQL Concepts Used

* Subqueries
  * Scalar Subqueries
  * Correlated Subqueries
* Aggregate Functions (`AVG`)
* Filtering (`WHERE`, `IN`, `EXISTS`)
* Aliasing

3. Execute the queries provided in the project.

## 📊 Expected Outcomes

* Ability to write optimized SQL queries using subqueries
* Understanding of real-world data analysis scenarios
* Improved problem-solving skills for SQL interviews

## 💡 Learning Outcomes

* Translate business problems into SQL queries
* Use correlated subqueries effectively
* Analyze structured datasets efficiently


## 📎 Conclusion

This project provides a strong foundation in SQL subqueries through practical use cases in insurance data analysis. It is highly useful for **data analyst roles** and **technical interviews**.
