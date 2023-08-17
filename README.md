SQL Challenge - Pewlett Hackard Research Project

Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files(departments, dept_emp, dept_manager, employees, salaries, and titles)

You will conduct the three processes below:
1.	Data Modeling
2.	Data Engineering
3.	Data Analysis


Technologies
•	PostgreSQL
•	SQLAlchemy
•	QuickDBD


Data Modeling:

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.

To create the sketch, feel free to use a tool like QuickDBD https://www.quickdatabasediagrams.com/ 
 
![image](https://github.com/GabrelleaNorman/sql-challenge/assets/130908954/a45b3247-2a30-41dc-a970-788787078583)

Data Engineering:

Once the Entity Relationship Diagram create a table schema to perform Data Engineering.

Create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints. 

Be sure to create tables in the correct order to handle foreign keys.

Import each CSV file into the corresponding SQL table.


Data Analysis:

After creating table schema create queries to follow the below instructions:

1.	List the employee number, last name, first name, sex, and salary of each employee.
2.	List the first name, last name, and hire date for the employees who were hired in 1986.
3.	List the manager of each department along with their department number, department name, employee number, last name, and first name.
4.	List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5.	List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6.	List each employee in the Sales department, including their employee number, last name, and first name.
7.	List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.	List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

