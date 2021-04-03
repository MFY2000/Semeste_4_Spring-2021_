-- LAB Task 05(Functions)

/*1. Display ename,job,sal of all the employees whose job is “CLERK”. Keeping this in mind
that CLERK may be in capital, small or combination of small capital characters in the
table.*/
select name,job,salary from EMPLOYEE where Upper(job) = 'CLERK'; 


/*2. Generate new names of the employees by combining the first 3 characters of the ename
and last 3 characters of the job.*/
select name,job ,concat(left(name,3),'_',right(job,3)) as 'Generate_newNames' from EMPLOYEE;


/*3. Generate new jobs of the employees by changing letter E with A in the existing jobs.*/
select job, replace(job,'E','A') as 'Generate_newjobs' from EMPLOYEE;

/*4. Display employee name,sal,comm and total salary (Comm + Sal) of all the employees.
Keeping this in mind that comm of some of the employee might be null but total salary
of the employees should not be null.*/
select name,salary,comm, (salary + iif(comm is not null,comm,0)) as 'Total_Salary' from EMPLOYEE;


/*5. Display ename,sal,comm and bonus of all the employees. If job = CLERK then bonus =
20% of the salary, if job = SALESMAN then bonus = 30% of the salary, if job = MANAGER
then bonus = 50% of the salary else bonus = 10% of the salary.*/
select name,salary,comm,
case job
when 'CLERK' then (salary * 0.2)
when 'SALESMAN' then (salary * 0.3)
when 'MANAGER' then (salary * 0.5)
else (salary * 0.1)
end 'Bonus'
from Employee
