
-- ✅ Complex Query #1
-- Prompt: List all non-HR employees hired between 2020 and 2022,
-- whose salary is between 55k and 65k, whose last name includes 'son',
-- and who work in Sales, IT, or Finance. Sort by hire date and salary.

SELECT first_name, last_name, department, salary, hire_date
FROM employees
WHERE NOT department = 'HR'
      AND hire_date BETWEEN '2020-01-01' AND '2022-12-31'
      AND salary BETWEEN 55000 AND 65000
      AND last_name LIKE '%son%'
      AND department IN ('Sales', 'IT', 'Finance')
ORDER BY hire_date, salary DESC
LIMIT 4;


-- ✅ Complex Query #2
-- Prompt: List all employees from IT or Finance hired between 2020 and 2022,
-- whose salary is under 62k and first name starts with 'J'. Sort by salary and first name.

SELECT first_name, last_name, department, salary, hire_date
FROM employees
WHERE department IN ('IT', 'Finance')
      AND hire_date BETWEEN '2020-01-01' AND '2022-12-31'
      AND salary < 62000
      AND first_name LIKE 'J%'
ORDER BY salary DESC, first_name
LIMIT 5;
