-- Task 1
Create PROCEDURE Display1
@deptno int
AS
BEGIN
SELECT d.name,sum(e.salary+isnull(e.comm,0)) as 'Total Salary' from DEPARTMENT d,EMPLOYEE e
WHERE d.deptno = e.deptno 
AND d.deptno = @deptno
GROUP BY d.name
end

exec Display1 10
 
-- Task 2
Create PROCEDURE Display2
@deptno int
as
begin
select d.name as 'DNAME',max(e.salary) as 'HIGHEST SALARIES',min(e.salary) as 'SMALLEST SALARIES' from DEPARTMENT d,EMPLOYEE e
WHERE d.deptno = e.deptno 
AND d.deptno = @deptno
GROUP BY d.name

select empno,name,(salary+isnull(comm,0)) as 'Total Salary' from EMPLOYEE
where deptno = @deptno
end

exec Display2 10
--------------------Functions Task 3
Create Function Manager1 (@emp_id int)
Returns Varchar(100)
As
begin
return (select b.name from EMPLOYEE e,EMPLOYEE b
where e.boss = b.empno 
and e.empno = @emp_id)
end

select name,dbo.Manager1(empno) from EMPLOYEE

---------------------Functions task 4
Create Function Manager2(@MangName varchar(50))
returns table
as
return (select e.name from EMPLOYEE e, EMPLOYEE b
where b.empno = e.boss
and b.name = @MangName 
and e.job = 'CLERK' )

select * from dbo.Manager2('FORD')
select * from EMPLOYEE

-- -- --TRIGGERS:
-- Task 1
CREATE TABLE EmpTable(
   empno      INTEGER NOT NULL,
   name       VARCHAR(10),
   job        VARCHAR(9),
   boss       INTEGER,
   hiredate   VARCHAR(12),
   salary     DECIMAL(7, 2),
   comm       DECIMAL(7, 2),
   deptno     INTEGER
);


create trigger EmpOperation 
on Employee
after update
as 
begin
Insert into EmpTable select * from inserted
end

create trigger EmpOperations2
on Employee
after delete
as
begin
Insert into EmpTable select * from Deleted 
end

INSERT INTO EMPLOYEE VALUES (7811, 'Jhon',   'Salesman', NULL, '1981-11-18', 5000, NULL, null);
update EMPLOYEE set name = 'mike' where empno = 7811
Delete from EMPLOYEE where empno = 7811

Select * from EmpTable