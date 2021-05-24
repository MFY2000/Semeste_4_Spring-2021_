
USE scott

select empno,name,job,salary from Employee where empno in(select empno from Employee where empno = 'clerk') 

select * from Employee
where deptno in(select deptno from DEPARTMENT where name = 'Sales')

select * from EMPLOYEE 

update employee set salary = salary -200
where empno in(select empno from EMPLOYEE where job = 'Analyst')

delete from EMPLOYEE where empno in(select empno from EMPLOYEE where name = 'brake')

select name, salary from EMPLOYEE
where salary > (select min(salary) from EMPLOYEE
where job like 'A%');

select name,salary from EMPLOYEE 
where salary > (select avg(salary) from EMPLOYEE )