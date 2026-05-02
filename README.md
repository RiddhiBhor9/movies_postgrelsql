# movies_postgrelsql
# 🎬 Movies Database (PostgreSQL Project)

## 📌 Project Overview

This project demonstrates basic to intermediate **PostgreSQL operations** using a `movies` database.
It covers table creation, data insertion, querying, aggregation, and optimization techniques.

---

## 🗂️ Database Structure

### Table: `movies`

| Column | Type         | Description       |
| ------ | ------------ | ----------------- |
| id     | SERIAL (PK)  | Unique movie ID   |
| title  | VARCHAR(100) | Movie name        |
| year   | INT          | Release year      |
| rating | DECIMAL(3,1) | IMDb-style rating |

---

## ⚙️ Features & Queries Included

### 🔹 Basic Operations

* Create table
* Insert records
* View all data
* Select specific columns

### 🔹 Filtering & Sorting

* Movies after a certain year
* Rating range queries
* Sort movies by rating
* Top N movies

### 🔹 Aggregations

* Average rating
* Count total movies
* Group movies by year
* Find years with multiple movies

### 🔹 Advanced Queries

* Find highest-rated movie
* Detect duplicate titles
* Replace NULL values with average
* Top frequent movie titles

### 🔹 Data Modification

* Update movie rating
* Delete low-rated movies

### 🔹 Performance

* Create index on title column

### 🔹 Data Import

* Import data from CSV file using `COPY`

---

## 🧠 Sample Queries

```sql
-- Top 3 movies by rating
SELECT * FROM movies ORDER BY rating DESC LIMIT 3;

-- Average rating
SELECT AVG(rating) FROM movies;

-- Movies released after 2015
SELECT * FROM movies WHERE year > 2015;
```

---

## 🚀 How to Run

1. Open PostgreSQL (pgAdmin or terminal)
2. Create a database:

```sql
CREATE DATABASE movies_db;
```

3. Run the SQL script:

```sql
\i movies.sql
```

---

## 📁 File Structure

```
📦 Movies-Database
 ┣ 📜 movies.sql
 ┗ 📜 README.md
```

---

## 🎯 Learning Outcomes

* SQL fundamentals (DDL, DML)
* Filtering & sorting data
* Aggregate functions
* Subqueries & grouping
* Data cleaning techniques
* Indexing for performance

---

## 💡 Future Improvements

* Add joins with actors/directors tables
* Build a frontend using React
* Connect with Python (Pandas/SQLAlchemy)

---

## 👩‍💻 Author

**Riddhi Bhor**
BSc IT Student | Aspiring Data Analyst | SQL Enthusiast

---
