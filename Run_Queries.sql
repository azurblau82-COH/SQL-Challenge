--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Employee.sex, Salaries.salary
FROM Employee
JOIN Salaries 
  ON Employee.emp_no = Salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date 
from Employee 
where hire_date LIKE '%1986';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select Department.Department_number, Department.Department_name, Dept_manager.emp_no, Employee.last_name, Employee.first_name
from Department
join Dept_manager
on Department.Department_number = Dept_manager.dept_no
join Employee
on Dept_manager.emp_no=Employee.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select Employee.emp_no, Employee.last_name, Employee.first_name, Department.Department_name
from Employee
join Dept_emp
on Employee.emp_no=Dept_emp.Emp_no
join Department
on Dept_emp.Dept_no=Department.Department_number;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from Employee
where first_name = 'Hercules' and last_name LIKE 'B%';

--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

select Employee.emp_no, Employee.last_name, Employee.first_name, Department.Department_name
from Employee
join Dept_emp
on Employee.emp_no=Dept_emp.Emp_no
join Department
on Dept_emp.Dept_no=Department.Department_number
where Department.Department_name = 'Sales';

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

select Employee.emp_no, Employee.last_name, Employee.first_name, Department.Department_name
from Employee
join Dept_emp
on Employee.emp_no=Dept_emp.Emp_no
join Department
on Dept_emp.Dept_no=Department.Department_number
where Department.Department_name = 'Sales' or Department.Department_name = 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, count(last_name) 
  FROM Employee 
 GROUP by last_name
 order by count desc;

--"Check your Employee Number"

select first_name, last_name
from Employee
where emp_no = 499942;
--April Foolsday--



