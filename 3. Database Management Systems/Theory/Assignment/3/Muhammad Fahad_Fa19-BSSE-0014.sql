CREATE DATABASE Assignment3

USE Assignment3

CREATE TABLE CUSTOMER(
    customer_id int not null PRIMARY KEY,
    customer_name varchar(50) not null, 
    customer_email varchar(50), 
    customer_no int unique not null, 
    customer_address varchar(150),
    customer_postcode int, 
)


CREATE TABLE PRODUCT(
    product_id int not null PRIMARY KEY,
    product_name char(50) not null,
    manufacturer char(50),
    price int not null,
    in_hand int, 
)

CREATE TABLE SALES(
    customer_id int not null FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
    product_id int not null FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    unit_price int not null,
    quantity int not null,
    date_purchased date not null,
)

-- 2 

INSERT INTO CUSTOMER VALUES(001,'John','John@company.com',1,'39 stress ABC road',123)
INSERT INTO CUSTOMER VALUES(002,'Turnquist','Turnquist@company.com',2,'39 stress ABC road',132)
INSERT INTO CUSTOMER VALUES(003,'Norberto Bellini','Bellini@company.com',3,'39 stress ABC road',145)
INSERT INTO CUSTOMER VALUES(004,'Lucio Fenske','Lucio.Fenske@company.com',4,'39 stress ABC road',178)
INSERT INTO CUSTOMER VALUES(005,'Kristel Shehan','Shehan@company.com',5,'39 stress ABC road',159)

INSERT INTO PRODUCT VALUES(85,'oil','2021-5-12',39,159)
INSERT INTO PRODUCT VALUES(88,'water','2021-5-12',55,32)
INSERT INTO PRODUCT VALUES(02,'fish','2020-8-5',45,75)
INSERT INTO PRODUCT VALUES(58,'fruit','2015-6-20',11,45)
INSERT INTO PRODUCT VALUES(75,'crops','2018-4-22',05,88)

INSERT INTO SALES VALUES(001,75,05,1,'8/2/2021')
INSERT INTO SALES VALUES(005,75,05,4,'4-12-2019')
INSERT INTO SALES VALUES(003,58,11,2,'7-5-2016')
INSERT INTO SALES VALUES(005,58,11,2,'1-4-2020')
INSERT INTO SALES VALUES(002,02,45,5,'1/12/2019')
INSERT INTO SALES VALUES(005,58,05,4,'11-12-2021')
INSERT INTO SALES VALUES(003,88,55,1,'7-22-2020')
INSERT INTO SALES VALUES(004,02,45,1,'8-05-2018')
INSERT INTO SALES VALUES(004,58,05,4,'4-12-2019')
INSERT INTO SALES VALUES(002,85,39,8,'8-28-2021')
INSERT INTO SALES VALUES(001,88,55,4,'5-12-2019')
INSERT INTO SALES VALUES(003,02,45,4,'8-1-2019')
INSERT INTO SALES VALUES(005,85,39,10,'8-6-2019')
INSERT INTO SALES VALUES(004,58,05,8,'8-6-2019')

-- 3
sp_columns CUSTOMER
sp_columns PRODUCT
sp_columns SALES

-- 4
select * from CUSTOMER;	
select * from PRODUCT;
select * from SALES;

-- B 2
-- 1
select product_id, sum(quantity) as 'Product Sold' from SALES
where MONTH(date_purchased) = 1
group by product_id
order by product_id desc


-- 2 
select c.customer_name,c.customer_no,c.customer_postcode,(quantity) AS 'MAXIMUM transactions' from CUSTOMER c,
SALES s 
where c.customer_id = s.customer_id
and (quantity) = 
(select max(quantity) from SALES
where MONTH(date_purchased) = 8)


-- 3
select c.customer_name,c.customer_no,c.customer_postcode,(quantity*unit_price) AS 'MAXIMUM amount' from CUSTOMER c,
SALES S 
where c.customer_id = S.customer_id
and (S.quantity*S.unit_price) = 
(select max(quantity*unit_price) from SALES)

-- 4
select product_name,price,manufacturer from  PRODUCT
 where price = 
 (select max(price) from PRODUCT 
 where price < 
 (select max(price) from PRODUCT))

-- 5
select *,
CASE
    WHEN in_hand < 10 THEN 'status is low.'
    WHEN in_hand BETWEEN 10 AND 50 THEN 'status is satisfactory.'
    WHEN in_hand > 50 THEN 'status is surplus'
END As inventory_Status
from PRODUCT;



