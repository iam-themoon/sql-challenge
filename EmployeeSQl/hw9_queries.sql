-- Queries for HW 9!

-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, last_name, first_name, sex, s.salary
FROM employees e, salaries s
WHERE e.emp_no = s.emp_no;

-- 2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1-1-1986' and '12-31-1986';

-- 3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, dp.dept_name, dm.emp_no, em.last_name, em.first_name
FROM employees em, dept_manager dm, departments dp
WHERE dm.dept_no = dp.dept_no AND dm.emp_no = em.emp_no;

-- 4) List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT em.emp_no, last_name, first_name, dept_name
FROM employees em, departments dp, dept_emp de
WHERE em.emp_no = de.emp_no AND de.dept_no = dp.dept_no;

-- 5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

-- 6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT em.emp_no, last_name, first_name, dept_name
FROM employees em, departments dp, dept_emp de
WHERE dept_name LIKE 'Sales' AND em.emp_no = de.emp_no AND de.dept_no = dp.dept_no;

-- 7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT em.emp_no, last_name, first_name, dept_name
FROM employees em, departments dp, dept_emp de
WHERE em.emp_no = de.emp_no AND de.dept_no = dp.dept_no 
AND (dept_name LIKE 'Sales' OR dept_name LIKE 'Development');


-- 8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT DESC;
