# SQL Practice – Days 1–3 Highlights
**Uploaded:** 2025-07-25

## Selected SQL Queries Demonstrating:
- SELECT, FROM, WHERE
- Logical Operators: AND, OR, NOT
- Pattern Matching: LIKE, IN, BETWEEN
- Sorting and Limiting Results

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

### IT Department | Salary and Department Filter
```sql
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'IT' AND salary > 60000;
```

### Exclude HR Department | Salary Filter
```sql
SELECT first_name, last_name, salary
FROM employees
WHERE NOT department = 'HR' AND salary < 60000;
```

### Sales or IT Department | Salary Below 60k | Pattern Match
```sql
SELECT first_name, last_name, department, salary
FROM employees
WHERE department IN ('Sales', 'IT', 'Finance')
  AND salary < 60000
  AND first_name LIKE 'M___'
ORDER BY department, last_name
LIMIT 3;
```

### Hire Date Range | Salary Range | Last Name Pattern
```sql
SELECT first_name, last_name, salary, department, hire_date
FROM employees
WHERE NOT department = 'HR'
  AND salary BETWEEN 50000 AND 65000
  AND hire_date >= '2021-01-01'
  AND last_name LIKE '%a%'
ORDER BY hire_date DESC, salary DESC
LIMIT 5;
```

### First Name J | Salary Under 62k | IT/Finance
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

### Exclude HR | Salary and Hire Date Range | Last Name Match
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

### Pattern and Salary Match | Sales Department
```sql
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'Sales' AND last_name LIKE '%son'
ORDER BY salary DESC
LIMIT 3;
```

