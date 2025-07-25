# SQL Practice – Days 1–3 Highlights
**Uploaded:** 2025-07-25

## Selected SQL Queries Demonstrating Mastery of:
- SELECT, FROM, WHERE
- IN, BETWEEN, LIKE
- ORDER BY, LIMIT
- Nested Logic and Filtering

### Sales, IT, or Finance | Hire Date, Salary Range, Name Filter
```sql
SELECT first_name, last_name, department, salary, hire_date
FROM employees
WHERE department IN ('Sales', 'IT', 'Finance')
  AND hire_date >= '2021-01-01'
  AND salary BETWEEN 55000 AND 67000
  AND last_name LIKE '%son%'
ORDER BY hire_date DESC, salary DESC
LIMIT 4;
```

### First Name Starts with J | IT or Finance | Salary Under 62k | Date Range
```sql
SELECT first_name, last_name, salary, department, hire_date
FROM employees
WHERE department IN ('IT', 'Finance')
  AND hire_date BETWEEN '2020-01-01' AND '2022-12-31'
  AND salary < 62000
  AND first_name LIKE 'J%'
ORDER BY salary DESC, first_name
LIMIT 5;
```

### Exclude HR | Salary Range | Hire Date Filter | Name Filter
```sql
SELECT first_name, last_name, department, salary, hire_date
FROM employees
WHERE NOT department = 'HR'
  AND hire_date BETWEEN '2020-01-01' AND '2022-12-31'
  AND salary BETWEEN 55000 AND 65000
  AND last_name LIKE '%son%'
  AND department IN ('Sales', 'IT', 'Finance')
ORDER BY hire_date, salary DESC
LIMIT 4;
```

