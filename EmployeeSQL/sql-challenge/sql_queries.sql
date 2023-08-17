--1.List the employee number, last name, first name, sex, and salary of each employee.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Join salaries
On employees.emp_no = salaries.emp_no;

--2.List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees.first_name, employees.last_name, employees.hire_date
From employees
Where hire_date between '1986-01-01' and '1986-12-31';

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select distinct on (departments.dept_no) departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
From departments
Join dept_manager
On departments.dept_no = dept_manager.dept_no
Join employees
On dept_manager.emp_no = employees.emp_no;


--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select distinct on (employees.emp_no) employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join dept_emp
On employees.emp_no = dept_emp.emp_no
Join departments
On dept_emp.dept_no = departments.dept_no;



--5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
From employees
Where first_name = 'Hercules' and last_name like 'B%';



--6.List each employee in the Sales department, including their employee number, last name, and first name.
Select distinct on (employees.emp_no) employees.emp_no, employees.last_name, employees.first_name
From employees
Join dept_emp
On employees.emp_no = dept_emp.emp_no
Join departments
On dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales';


--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select distinct on (employees.emp_no) employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join dept_emp
On employees.emp_no = dept_emp.emp_no
Join departments
On dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales' or departments.dept_name = 'Development';


--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;