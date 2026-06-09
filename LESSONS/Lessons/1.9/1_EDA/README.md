# Exploratory Data Analysis w/ SQL: Job Market Analytics

![Project Architecture](/Images/1_1_Project1_EDA.png)

A SQL project analyzing the data engineer job market using real world job posting data. It demonstrates my ability **to write production-quality analytical SQL, design efficient queries, and turn business questions into data-driven insights**.

---

## Executive Summary

Analyzed a real-world Data Science job postings dataset using DuckDB (OLAP engine) hosted on MotherDuck. The goal was to answer three core business questions about the data engineering job market — what skills are most in demand, what skills pay the most, and what skills offer the best combination of both.

---

## Problem & Context

Breaking into data engineering requires knowing *which skills actually matter*. This project cuts through the noise by directly querying job posting data to find:
- Which skills appear most frequently in job postings?
- Which skills are linked to the highest salaries?
- Which skills are optimal — high demand AND high paying?

---

## Tech Stack

| Tool | Purpose |
|---|---|
| **DuckDB** | OLAP query engine for fast analytical SQL |
| **MotherDuck** | Cloud-hosted DuckDB data warehouse |
| **SQL** | Core analysis language |
| **VS Code** | Development environment |

---

## Analysis Overview

The project is structured into 3 focused SQL analyses:

**01 — Top Demanded Skills**
Identified the most frequently requested skills across all data engineering job postings.

**02 — Top Paying Skills**
Analyzed average salaries associated with each skill to find the highest paying ones.

**03 — Optimal Skills**
Combined demand and salary data to surface skills that offer the best return on learning investment.

---

## SQL Skills Demonstrated

- `JOIN` — combining job postings with skills tables
- `GROUP BY` + `COUNT` — aggregating skill frequency
- `AVG` — calculating average salaries per skill
- `ORDER BY` / `LIMIT` — ranking top results
- Analytical query design for business insights