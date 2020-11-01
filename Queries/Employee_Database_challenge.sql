-- VDAB Module 7 Employee Database Challenge
-- DELIVERABLE 1
-- Query 1 & Export retirement_titles.csv
-- Use Dictinct with Orderby to remove duplicate rows
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
-- Create retirment_titles table
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (e.emp_no);

-- Query 2 & Export unique_titles.csv
-- Remove employee duplicates due to title changes
SELECT DISTINCT ON (ri.emp_no) ri.emp_no,
ri.first_name,
ri.last_name,
ri.title
--Create unique_titles table
INTO unique_titles
FROM retirement_titles AS ri
ORDER BY ri.emp_no ASC, ri.to_date DESC;

-- Query 3 & Export retiring_titles.csv
-- Count Number of Potential Retirees by Title
SELECT COUNT(ut.title), ut.title
-- Create reiring_titles table
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- DELIVERABLE 2
-- Query 1 & Export membership_eligibility.csv 
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
-- Create mentorship_eligibility table
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = '9999-01-01'
ORDER BY (e.emp_no) ASC;

