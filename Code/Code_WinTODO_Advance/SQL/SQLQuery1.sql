create database TODO_list

use TODO_list


create table List(
id int IDENTITY(7453,1) PRIMARY KEY,
Todo varchar(250),
Date_ varchar(30),
Status_ int check (Status_ > -1 and Status_ < 2),
);

select * from List;

drop table List;

TRUNCATE TABLE List;

INSERT INTO List VALUES ('to go market','12-05-2020',0);
