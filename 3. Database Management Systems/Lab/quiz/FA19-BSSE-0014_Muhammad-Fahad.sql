use Quiz

-- 1
select count(e.employeeID) as 'Number of employees', e.deptID, avg(j.salary) as 'Average salary' from employees e, jobs j
where e.JobId = j.JobId
Group by(e.deptID);

-- 2
select e.FirstName,e.LastName,j.jobTittle,j.salary  from employees e,jobs j
where e.JobID = j.JobId
and j.salary = (select max(j.salary) from jobs j,employees e
where j.JobID = e.JobId)

-- 3
select j.jobTittle, e.FirstName from employees e
full join jobs j
on e.JobId = j.JobId;

use Quiz_part2;

-- 1
select * from Customers 
where CustomerID in 
(select CustomerID from Orders 
where ShipCountry = 'UK');

-- 2
select * from Shippers 
where ShipperID = (select ShipVia from Orders 
where Freight = (select max(Freight) from Orders)
)

-- 3
select * from Employees
where City in (select City from Customers) 
and
Country in (select Country from Customers);