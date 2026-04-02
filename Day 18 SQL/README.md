# 📊  Social Media Data Analysis (SQL Project)

## 📌 Project Overview

This project simulates a real-world social media platform called **social_media**. The objective is to analyze user activity, relationships, and engagement using SQL.
The project focuses on extracting meaningful insights from relational data using advanced SQL concepts such as JOINs, subqueries, and stored procedures/functions.


## 🗂️ Database Schema

The database consists of the following tables:

* **Users** – Stores user profile information
* **Posts** – Contains posts created by users
* **Likes** – Tracks likes on posts
* **Comments** – Stores comments on posts
* **Friendships** – Represents connections between users


## ⚙️ Technologies Used

* PostgreSQL
* SQL (Joins, Subqueries, Functions)


## 🚀 Key Features & Tasks

### 🔹 Task 1: Basic Joins

* Retrieve all posts with author usernames
* Fetch comments with commenter details

### 🔹 Task 2: Data Analysis

* Identify top 3 users with most posts
* Find posts with above-average likes
* Detect users who liked posts but never posted

### 🔹 Task 3: Relationship Queries

* Get friends of a specific user
* Retrieve posts liked by friends

### 🔹 Task 4: Stored Procedure / Function

* Created `GetUserActivity(userId)` to analyze:

  * Total posts
  * Likes given
  * Likes received
  * Comments made

### 🔹 Task 5: Challenge Query

* Identify the **most influential user** based on:

  * Total likes + comments


## 🧠 SQL Concepts Covered

* **JOINs**

  * INNER JOIN
  * LEFT JOIN
  * SELF JOIN

* **Subqueries**

  * Scalar Subqueries
  * Correlated Subqueries
  * Nested Queries

* **Aggregation**

  * COUNT(), AVG()
  * GROUP BY, HAVING

* **Functions (PostgreSQL)**

  * User-defined function for activity tracking


## 📈 Sample Insights

* Users with the highest engagement can be identified
* Posts with high interaction rates are highlighted
* Inactive users vs active users can be analyzed
* Social connections influence engagement patterns


## ⚡ Optimization Techniques

* Indexing frequently used columns:

  * `user_id`, `post_id`
* Efficient use of GROUP BY and HAVING
* Avoiding unnecessary joins and subqueries

## 🎯 Expected Outcomes

* Strong understanding of SQL JOINs and relationships
* Ability to write complex subqueries
* Experience in real-world data analysis
* Knowledge of query optimization techniques


## 📌 Conclusion

This project demonstrates how SQL can be used to analyze social media data effectively. It showcases the ability to convert business problems into structured queries and genera
