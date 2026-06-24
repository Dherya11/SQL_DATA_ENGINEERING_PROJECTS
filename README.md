# 🗄️ SQL Data Engineering Projects

A growing collection of SQL projects, lessons, and analyses focused on data engineering concepts — from fundamentals to real-world EDA. Built using **DuckDB** as the OLAP engine, with queries written and run in VS Code.

---

## 📁 Repository Structure

```
SQL_DATA_ENGINEERING_PROJECTS/
│
├── LESSONS/                    # Structured SQL lessons by topic
│   └── Lessons/
│       └── <lesson_number>/    # Each lesson folder contains .sql files + README
│
├── PROJECTS/                   # Standalone analysis/EDA projects (coming soon)
│
├── Images/                     # Diagrams and screenshots
├── .bashrc
└── README.md
```

> Structure evolves as new lessons and projects are added.

---

## 📚 Lessons

SQL concepts covered so far, roughly in order:

| Topic | Description |
|-------|-------------|
| VS Code Intro | Setting up the dev environment for SQL |
| Data Types | SQL data types and when to use them |
| DDL & DML | `CREATE`, `ALTER`, `DROP`, `INSERT`, `UPDATE`, `DELETE` |
| JOINs | `INNER`, `LEFT`, `RIGHT`, `FULL` joins with examples |
| Query Execution Order | `FROM → WHERE → GROUP BY → SELECT → ORDER BY → LIMIT` |
| EDA with SQL | Exploratory analysis on real-world job postings data |

*More topics added regularly.*

---

## 🔍 Projects

### 1. Job Market Analytics (EDA)
> `LESSONS/Lessons/1.9/1_EDA/`

Exploratory Data Analysis on Data Science job postings to answer:
- What skills are most in demand?
- Which skills pay the most?
- What's the optimal skill to learn for data roles?

**Stack:** DuckDB · SQL · VS Code

---

## 🛠️ Tech Stack

- **DuckDB** — fast in-process OLAP engine, no server needed
- **SQL** — primary language throughout
- **VS Code** — with SQLTools + DuckDB driver

---

## 🚀 Getting Started

### Prerequisites
- [DuckDB](https://duckdb.org/docs/installation/) installed
- VS Code + SQLTools extension (optional but recommended)

### Run any SQL file

```bash
duckdb < path/to/your_query.sql
```

Or open in VS Code and execute via the SQL extension.

---

## 📌 Goals of This Repo

- Build strong SQL foundations for data engineering roles
- Practice real-world EDA using analytical SQL
- Document learning progress with clean, readable queries

---

## 📄 License

For educational purposes. Datasets used are publicly available.
=======
# 🗄️ SQL Data Engineering Projects

A growing collection of SQL projects, lessons, and analyses focused on data engineering concepts — from fundamentals to real-world EDA. Built using **DuckDB** as the OLAP engine, with queries written and run in VS Code.

---

## 📁 Repository Structure

```
SQL_DATA_ENGINEERING_PROJECTS/
│
├── LESSONS/                    # Structured SQL lessons by topic
│   └── Lessons/
│       └── <lesson_number>/    # Each lesson folder contains .sql files + README
│
├── PROJECTS/                   # Standalone analysis/EDA projects (coming soon)
│
├── Images/                     # Diagrams and screenshots
├── .bashrc
└── README.md
```

> Structure evolves as new lessons and projects are added.

---

## 📚 Lessons

SQL concepts covered so far, roughly in order:

| Topic | Description |
|-------|-------------|
| VS Code Intro | Setting up the dev environment for SQL |
| Data Types | SQL data types and when to use them |
| DDL & DML | `CREATE`, `ALTER`, `DROP`, `INSERT`, `UPDATE`, `DELETE` |
| JOINs | `INNER`, `LEFT`, `RIGHT`, `FULL` joins with examples |
| Query Execution Order | `FROM → WHERE → GROUP BY → SELECT → ORDER BY → LIMIT` |
| EDA with SQL | Exploratory analysis on real-world job postings data |

*More topics added regularly.*

---

## 🔍 Projects

### 1. Job Market Analytics (EDA)
> `LESSONS/Lessons/1.9/1_EDA/`

Exploratory Data Analysis on Data Science job postings to answer:
- What skills are most in demand?
- Which skills pay the most?
- What's the optimal skill to learn for data roles?

**Stack:** DuckDB · SQL · VS Code

---

## 🛠️ Tech Stack

- **DuckDB** — fast in-process OLAP engine, no server needed
- **SQL** — primary language throughout
- **VS Code** — with SQLTools + DuckDB driver

---

## 🚀 Getting Started

### Prerequisites
- [DuckDB](https://duckdb.org/docs/installation/) installed
- VS Code + SQLTools extension (optional but recommended)

### Run any SQL file

```bash
duckdb < path/to/your_query.sql
```

Or open in VS Code and execute via the SQL extension.

---

## 📌 Goals of This Repo

- Build strong SQL foundations for data engineering roles
- Practice real-world EDA using analytical SQL
- Document learning progress with clean, readable queries

---

## 📄 License

For educational purposes. Datasets used are publicly available.
>>>>>>> b2997312c389c4efb5c1614169ff54db4213f2d2
