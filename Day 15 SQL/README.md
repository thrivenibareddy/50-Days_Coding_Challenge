# 🎓 College Database Management using SQL

## 📌 Project Overview

This project demonstrates how to design and analyze a **College Database** using SQL. It covers table creation, relationships (foreign keys), data insertion, and various SQL queries for data retrieval and analysis.

The project is ideal for beginners to understand **database design and SQL fundamentals**.

---

## 🗂️ Database Structure

### 🧑‍🎓 Students Table

| Column Name  | Data Type   | Description                     |
| ------------ | ----------- | ------------------------------- |
| student_id   | INT         | Unique student ID (Primary Key) |
| student_name | VARCHAR(50) | Name of the student             |
| gender       | VARCHAR(10) | Gender (M/F)                    |
| city         | VARCHAR(50) | Student's city                  |
| join_year    | INT         | Year of joining                 |

---

### 📚 Courses Table

| Column Name | Data Type    | Description                    |
| ----------- | ------------ | ------------------------------ |
| course_id   | INT          | Unique course ID (Primary Key) |
| course_name | VARCHAR(100) | Name of the course             |
| department  | VARCHAR(50)  | Department offering course     |

---

### 📝 Marks Table

| Column Name | Data Type | Description                  |
| ----------- | --------- | ---------------------------- |
| mark_id     | INT       | Unique mark ID (Primary Key) |
| student_id  | INT       | References Students table    |
| course_id   | INT       | References Courses table     |
| marks       | INT       | Marks scored by student      |

---

## 🔗 Relationships

* `student_id` in **Marks** → references **Students**
* `course_id` in **Marks** → references **Courses**

---

## 📥 Sample Data

The dataset includes:

* 5 Students
* 3 Courses
* 7 Marks records

---

## 🛠️ SQL Concepts Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* Aggregate Functions (COUNT, AVG, SUM, MAX, MIN)
* BETWEEN
* NOT Operator
* Foreign Key Constraints

---

## 🔍 Key Queries & Analysis

### 📌 Basic Retrieval

* Display all students
* Display student names and cities
* Show all courses

### 📌 Filtering

* Students from **Tumakuru**
* Students joined in **2024**
* Female students
* Marks greater than 80
* Courses from **Commerce** department
* Students not from Bengaluru

### 📌 Range Queries

* Marks between **70 and 90**

### 📌 Sorting

* Students sorted by name (ASC)
* Marks sorted (DESC)
* Students sorted by join year (latest first)

### 📌 Aggregations

* Total number of students
* Average marks
* Highest marks
* Lowest marks
* Total marks scored

---

## 📈 Key Insights

* Students from multiple cities provide diverse data analysis
* High-performing students (marks > 80) can be identified easily
* Aggregate functions help summarize academic performance
* Sorting helps rank students and analyze trends

---

## 🚀 How to Run

1. Create the database:

```sql
CREATE DATABASE College;
USE College;
```

2. Create tables (Students, Courses, Marks)
3. Insert sample data
4. Execute queries step-by-step

---

## 🎯 Learning Outcomes

* Understand relational database design
* Learn how to use primary and foreign keys
* Perform filtering and sorting operations
* Apply aggregate functions for analysis
* Build strong SQL fundamentals




