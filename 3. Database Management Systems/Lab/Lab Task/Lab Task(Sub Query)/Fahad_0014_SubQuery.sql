USE scott

-- 1
select name,hiredate from EMPLOYEE 
where deptno = (select deptno from EMPLOYEE where name = 'BLAKE') and name != 'BLAKE';

-- 2 
select empno,name,salary from EMPLOYEE 
where salary > (select avg(salary) from EMPLOYEE)
order by salary desc

-- 3 

select name, salary from EMPLOYEE
where deptno in (select deptno from EMPLOYEE
where name like 'T%');

-- 4 
select name,deptno,job from EMPLOYEE 
where deptno = (select deptno from DEPARTMENT
where location = 'DALLAS');

-- 5
select name,salary from EMPLOYEE 
where Boss = 
(select empno from EMPLOYEE
 where name = 'KING') 