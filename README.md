# Data Science Jobs Analysis Using SQL

This project explores a dataset of data science job vacancies using MySQL.

I used SQL to clean the data, design a relational database and answer questions about companies, job roles and employment types.

---

## Dataset

The dataset includes information such as:

- Job title
- Company
- Salary
- Company rating
- Company reviews
- Employment type

Source: Kaggle – Data Science Jobs Dataset

---

## Database Design

Instead of working with one large table, I split the data into three related tables.

- **Companies** – company information, ratings and reviews
- **Jobs** – job details and salary information
- **JobTypes** – employment types

This reduced duplicated data and allowed me to practise using primary and foreign keys.

![Database Schema](Screenshots/schema.png)

---

## Data Cleaning

Before analysing the data, I:

- checked for missing values
- looked for duplicate records
- kept missing salary values because many adverts didn't include salaries
- kept repeated job listings where they appeared to be separate adverts

---

## Example Queries

### Average company rating

```sql
SELECT ROUND(AVG(rating),2) AS AverageRating
FROM clean_jobs;
```

### Companies with more than three vacancies

```sql
SELECT company,
       COUNT(*) AS Jobs
FROM clean_jobs
GROUP BY company
HAVING COUNT(*) > 3
ORDER BY Jobs DESC;
```

### Create a view of highly rated companies

```sql
CREATE VIEW High_Rated_Companies AS
SELECT *
FROM clean_jobs
WHERE rating >= 4.5;

SELECT *
FROM High_Rated_Companies;
```

---

## Questions Explored

- Which companies advertise the most jobs?
- Which employment type is most common?
- What is the average company rating?
- Which companies have the highest ratings?
- How many vacancies does each company advertise?
- Which job titles appear under each employment type?

---

## SQL Skills

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY / FOREIGN KEY
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- JOIN
- Views
- Aggregate functions

---

## What I Learned

This project gave me more practice with SQL and relational database design.

The biggest challenge was deciding how to split the original dataset into separate tables while keeping the relationships between them. It also helped me become more confident writing joins and aggregate queries to answer questions about the data.
