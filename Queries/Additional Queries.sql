ALTER TABLE employees add birth_year int;

UPDATE employees
SET birth_year=case
	WHEN birth_date < '1953-01-01' and birth_date >= '1952-01-01' THEN 1952
	WHEN birth_date < '1954-01-01' and birth_date >= '1953-01-01' THEN 1953
	WHEN birth_date < '1955-01-01' and birth_date >= '1954-01-01' THEN 1954
	WHEN birth_date < '1956-01-01' and birth_date >= '1955-01-01' THEN 1955
	WHEN birth_date < '1957-01-01' and birth_date >= '1956-01-01' THEN 1956
	WHEN birth_date < '1958-01-01' and birth_date >= '1957-01-01' THEN 1957
	WHEN birth_date < '1959-01-01' and birth_date >= '1958-01-01' THEN 1958
	WHEN birth_date < '1960-01-01' and birth_date >= '1959-01-01' THEN 1959
	WHEN birth_date < '1961-01-01' and birth_date >= '1960-01-01' THEN 1960
	WHEN birth_date < '1962-01-01' and birth_date >= '1961-01-01' THEN 1961
	WHEN birth_date < '1963-01-01' and birth_date >= '1962-01-01' THEN 1962
	WHEN birth_date < '1964-01-01' and birth_date >= '1963-01-01' THEN 1963
	WHEN birth_date < '1965-01-01' and birth_date >= '1964-01-01' THEN 1964
	WHEN birth_date < '1966-01-01' and birth_date >= '1965-01-01' THEN 1965
END;

SELECT COUNT(ut.emp_no) as "Number of Retirees",
e.birth_year as "Birth Year"
FROM unique_titles as ut
INNER JOIN employees as e
	ON ut.emp_no = e.emp_no
GROUP BY e.birth_year;

SELECT COUNT(emp_no),
birth_year 
FROM employees
GROUP BY birth_year
ORDER BY birth_year;



SELECT count(emp_no) as "Number of Hires",
hire_year
FROM retirement_titles
GROUP BY hire_year
ORDER BY hire_year;

SELECT * FROM unique_titles;

SELECT * FROM retiring_titles;

SELECT count as "Retiring Employees",
title as "Title"
FROM retiring_titles;

SELECT COUNT(title) as "Mentorship Eligible Employees",
title as "Title"
FROM mentorship_eligibility
GROUP BY "Title"
ORDER BY "Mentorship Eligible Employees" DESC;

SELECT * FROM mentorship_eligibility;

