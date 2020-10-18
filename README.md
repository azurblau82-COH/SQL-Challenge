# SQL-Challenge

Setting up the ERD:

The employee table is center, it lists all the emp numbers, which we can use as our primary key
tables like salaries and titles link to this employee table via emp number and title id (foreign keys)

dept_emp and dept_manager link to employee via emp_no (foreign key)

both these tables then link to department

note that dept_emp <-> employee and employee <-> salaries map 1-to-1


all queries appear to run correctly, screenshots of the first 10 or so rows are inlcuded for each exercise
(i manually traced some numbers through the files to make sure it all lined up)

for the bonus in pandas, note that the username and password were removed from the link 
(i suppose they could have been fed in through a separate file like we did with API keys)

The histogram shows a very assymmetrical distribution, one would expect something much closer to a normal distribution, 
indicating the data may have been faked.
