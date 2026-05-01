**Day 36: Student Batch Performance Analyzer**

**📌 Project Overview**

This project analyzes student performance data across multiple batches (b7, b8, b9) using Python.

It simulates a real-world data analytics use case, where we evaluate student engagement and performance to derive meaningful insights.

**🎯 Objectives**

Identify the best-performing batch
Find top-performing students
Detect at-risk students

**Calculate:**

Average attendance
Average assignment submission
Average content consumption

**🧠 Concepts Used**

✅ User-defined Functions
✅ Lists & Dictionaries
✅ Loops & Conditional Statements
✅ Data Aggregation
✅ Filtering Logic

**🗂️ Dataset Description**

The dataset is a list of dictionaries, where each record represents a student:

Field	Description
batch	Batch ID (b7, b8, b9)
name	Student Name
consumption	Content consumption (%)
live	Live class attendance (%)
recording	Recorded session usage (%)
assignment_sub	Assignment submission (%)
assignment_score	Assignment score (%)

**⚙️ Functions Implemented**

🔹 1. Calculate Average
def calculate_average(values):
    return sum(values) / len(values)
    
🔹 2. Find Top Performers
def find_top_performers(data, column, threshold):
    return [s["name"] for s in data if s[column] >= threshold]
    
🔹 3. Find At-Risk Students
def find_at_risk_students(data, column, threshold):
    return [s["name"] for s in data if s[column] < threshold]
    
🔹 4. Batch Summary
def batch_summary(data):
    batches = {}

    for s in data:
        batch = s["batch"]
        if batch not in batches:
            batches[batch] = []
        batches[batch].append(s)

    summary = {}

    for batch, students in batches.items():
        summary[batch] = {
            "total_students": len(students),
            "avg_attendance": calculate_average([s["live"] for s in students]),
            "avg_assignment": calculate_average([s["assignment_sub"] for s in students]),
            "avg_consumption": calculate_average([s["consumption"] for s in students])
        }

    return summary
    
🔹 5. Rank Batches
def rank_batches(summary):
    best_batch = None
    max_score = 0

    for batch, values in summary.items():
        if values["avg_consumption"] > max_score:
            max_score = values["avg_consumption"]
            best_batch = batch

    return best_batch
    
▶️ Execution
summary = batch_summary(data)

print("Best Batch:", rank_batches(summary))

print("\nBatch Summary:")
for batch, values in summary.items():
    print(f"\nBatch: {batch}")
    print(f"Average Attendance: {values['avg_attendance']:.1f}%")
    print(f"Average Assignment Submission: {values['avg_assignment']:.1f}%")
    print(f"Average Content Consumption: {values['avg_consumption']:.1f}%")

print("\nTop Performers:")
print(find_top_performers(data, "consumption", 80))

print("\nAt-Risk Students:")
print(find_at_risk_students(data, "consumption", 20))

**📈 Output**
**Best Batch:** b9

**Batch Summary:**

Batch: b7
Average Attendance: 50.0%
Average Assignment Submission: 49.0%
Average Content Consumption: 50.0%

Batch: b8
Average Attendance: 52.0%
Average Assignment Submission: 49.4%
Average Content Consumption: 51.0%

Batch: b9
Average Attendance: 60.0%
Average Assignment Submission: 57.6%
Average Content Consumption: 58.6%

**Top Performers:**
['Pooja', 'Asha', 'Vikram', 'Neha']

**At-Risk Students:**
['Ravi', 'Sneha', 'Karthik']

**💡 Key Insights**
🏆 Batch b9 is the best-performing batch
📉 Students with <20% consumption are at risk
📈 Higher engagement leads to better performance
