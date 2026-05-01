# 📘 Day 35 – Python Coding Challenge

## 🔹 Built-in Functions & Data Structures

---

## 📌 Overview

This challenge focuses on using Python’s **built-in functions** and **data structures** to solve common problems efficiently.

---

## 🚀 Challenge 1: Flatten a Nested List

### 🧠 Concept

* List Comprehension

### ❓ Problem

```python
nested = [[1, 2], [3, 4], [5]]
```

### ✅ Solution

```python
nested = [[1, 2], [3, 4], [5]]

flattened = [item for sublist in nested for item in sublist]

print(flattened)
```

### 🔍 Explanation

* Iterate through each sublist
* Extract each item from sublist
* Combine all items into a single list

### 📌 Output

```
[1, 2, 3, 4, 5]
```

---

## 🚀 Challenge 2: Check Anagram

### 🧠 Concept

* `sorted()`

### ❓ Problem

```python
s1 = "listen"
s2 = "silent"
```

### ✅ Solution

```python
s1 = "listen"
s2 = "silent"

print(sorted(s1) == sorted(s2))
```

### 🔍 Explanation

* Sort both strings
* Compare sorted results
* If equal → strings are anagrams

### 📌 Output

```
True
```

---

## 🚀 Challenge 3: Find Missing Number

### 🧠 Concept

* `set()`

### ❓ Problem

```python
nums = [1, 2, 4, 5]
```

### ✅ Solution

```python
nums = [1, 2, 4, 5]

full_set = set(range(1, 6))
missing = full_set - set(nums)

print(missing.pop())
```

### 🔍 Explanation

* Generate full range of numbers
* Convert list to set
* Subtract sets to find missing number

### 📌 Output

```
3
```

---

## 🚀 Challenge 4: Group Words by First Letter

### 🧠 Concept

* Dictionary
* `setdefault()`

### ❓ Problem

```python
words = ["apple", "ant", "banana", "bat"]
```

### ✅ Solution

```python
words = ["apple", "ant", "banana", "bat"]

grouped = {}

for word in words:
    grouped.setdefault(word[0], []).append(word)

print(grouped)
```

### 🔍 Explanation

* Use first character as key
* Group words into lists
* `setdefault()` avoids checking if key exists

### 📌 Output

```
{'a': ['apple', 'ant'], 'b': ['banana', 'bat']}
```

---

## 🚀 Challenge 5: Remove Empty Values

### 🧠 Concept

* Dictionary Comprehension

### ❓ Problem

```python
data = {"a": 1, "b": None, "c": 3, "d": None}
```

### ✅ Solution

```python
data = {"a": 1, "b": None, "c": 3, "d": None}

cleaned = {k: v for k, v in data.items() if v is not None}

print(cleaned)
```

### 🔍 Explanation

* Iterate through dictionary items
* Keep only values that are not `None`

### 📌 Output

```
{'a': 1, 'c': 3}
```

---

## 🎯 Key Learnings

* ✔️ List comprehension improves readability and performance
* ✔️ `sorted()` simplifies string comparison
* ✔️ `set()` is powerful for difference operations
* ✔️ `setdefault()` simplifies dictionary grouping
* ✔️ Dictionary comprehension helps in quick data filtering


