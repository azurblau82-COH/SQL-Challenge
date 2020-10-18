--drop table Titles;
CREATE TABLE Titles (
    title_id VARCHAR(99)   NOT NULL,
    title VARCHAR(99)   NOT NULL,
	primary key (title_id)
	);

--drop table "Department"
CREATE TABLE Department (
	Department_number VARCHAR(99)   NOT NULL,
    Department_name VARCHAR(99)   NOT NULL,
	primary key (Department_number)
	);

--drop table Employee
CREATE TABLE Employee (
    emp_no int   NOT NULL,
    emp_title_id VARCHAR(99)   NOT NULL,
    birth_date VARCHAR(99)   NOT NULL,
    first_name VARCHAR(99)   NOT NULL,
    last_name VARCHAR(99)   NOT NULL,
    sex VARCHAR(99)   NOT NULL,
    hire_date VARCHAR(99)   NOT NULL,	
	primary key (emp_no),
	foreign key (emp_title_id) references Titles(title_id)
);
--drop table Salaries
CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	foreign key (emp_no) references Employee(emp_no)
);
--drop table Dept_emp
CREATE TABLE Dept_emp (
    Emp_no int   NOT NULL,
    Dept_no VARCHAR(99)   NOT NULL,
    foreign key (Emp_no) references Employee(emp_no),
	foreign key (Dept_no) references Department(Department_number)
);
--drop table Dept_manager
CREATE TABLE Dept_manager (
    dept_no VARCHAR(99)   NOT NULL,
    emp_no int   NOT NULL,
	foreign key (dept_no) references Department(Department_number),
	foreign key (emp_no) references Employee(emp_no)
);

