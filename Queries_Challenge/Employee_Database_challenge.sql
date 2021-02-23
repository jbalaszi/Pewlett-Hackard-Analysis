-- The number of retiring employees by title
SELECT em.emp_no, 
       em.first_name, 
       em.last_name,
    ti.title, 
       ti.from_date, 
       ti.to_date
INTO retirement_titles
FROM employees AS em
LEFT JOIN titles as ti
ON (em.emp_no = ti.emp_no)
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;
--Export retirement titles
SELECT * FROM retirement_titles;

-- Use Dictinct & orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name, 
    last_name, 
    title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

--Export unique titles as CSV
SELECT * FROM unique_titles;

-- Retrieve the number of employees by their most recent job title who are retirment eligible
SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

--Export retiring titles as CSV
SELECT * FROM retiring_titles;

-- Create a Mentorship Eligibility table for employees who are eligible to participate in mentorship program
SELECT DISTINCT ON (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees AS em
LEFT JOIN dept_emp AS de
ON em.emp_no = de.emp_no
LEFT JOIN titles AS ti
ON em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY em.emp_no;

--Export mentorship eligibility table as CSV
SELECT * FROM mentorship_eligibility;