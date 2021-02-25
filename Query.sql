--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--do join table - data exists in diff tables
CREATE VIEW data_Analy AS
SELECT EMP.emp_no, EMP.last_name, EMP.first_name, EMP.sex, SAL.salary
FROM employees AS EMP
INNER JOIN salaries as SAL ON
EMP.emp_no=SAL.salary
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT EMP.first_name,EMP.last_name, EMP. hire_date
FROM employees AS EMP
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no, d.dept_name,e.emp_no, e.last_name, e.first_name
FROM employees AS e
  JOIN dept_manager AS m
  ON (m.emp_no = e.emp_no)
    JOIN departments AS d
    ON (d.dept_no = m.dept_no)
      
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, d.dept_name,e.last_name, e.first_name
FROM employees AS e
  JOIN dept_manager AS m
  ON (m.emp_no = e.emp_no)
    JOIN departments AS d
	ON (d.dept_no = m.dept_no)

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT EMP.first_name,EMP.last_name, EMP.sex
FROM employees AS EMP
WHERE EMP.first_name = 'Hercules'
AND EMP.last_name LIKE '%B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, d.dept_name,e.last_name, e.first_name
FROM employees AS e
  JOIN dept_manager AS m
  ON (m.emp_no = e.emp_no)
    JOIN departments AS d
	ON (d.dept_no = m.dept_no)
WHERE d.dept_name='Sales'


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, d.dept_name,e.last_name, e.first_name
FROM employees AS e
  JOIN dept_manager AS m
  ON (m.emp_no = e.emp_no)
    JOIN departments AS d
	ON (d.dept_no = m.dept_no)
WHERE d.dept_name='Sales'OR d.dept_name='Development'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) as frequency
FROM employees 
GROUP BY last_name
ORDER BY frequency DESC

---read from table*
SELECT *
FROM employees


