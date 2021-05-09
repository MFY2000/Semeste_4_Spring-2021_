use scott

-- 1
select DISTINCT e.job , d.location from EMPLOYEE e
inner join DEPARTMENT d
on e.deptno = d.deptno
where e.deptno = 30

-- 2
select e.name as 'Employee name' , d.name as 'department name' from EMPLOYEE e
inner join DEPARTMENT d
on e.deptno = d.deptno
where e.comm is not null;

-- 3
select e.name, e.job, d.name as 'department name', e.salary,s.grade from EMPLOYEE e
inner join DEPARTMENT d
on e.deptno = d.deptno
inner join SALARYGRADE s
on e.salary BETWEEN s.losal and s.hisal

-- 4
select e.name,e.hiredate from EMPLOYEE e, EMPLOYEE ad 
where ad.name = 'ADAMS' 
and
ad.hiredate < e.hiredate;

-- 5
Select e.name as 'Employee name',e.hiredate as 'Employee hire dates',
		b.name as 'Boss name', b.hiredate as 'Boss hire dates.' from employee e 
inner join employee b 
on e.boss = b.empno 
where e.hiredate > b.hiredate

-- 6
Select  e.name as 'Employee name' , d.name as 'department name',
		b.name as 'Boss name' , d.name as 'Boss Department name' from employee e 
full outer join employee b 
on e.boss = b.empno 
inner join DEPARTMENT d 
on e.deptno = d.deptno

