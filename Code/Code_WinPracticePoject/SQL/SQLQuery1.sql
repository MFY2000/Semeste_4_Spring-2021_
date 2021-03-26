

create database TODO_list

use TODO_list


create table List(
id int IDENTITY(1,1) PRIMARY KEY,
Todo varchar(250),
Date_ varchar(10),
Status_ int check (Status_ > -1 and Status_ < 2),
);


select * from List;

drop table List;

INSERT INTO List VALUES ('to go market','12-05-2020',0);
