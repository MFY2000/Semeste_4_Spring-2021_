create database MAJU

use MAJU;

CREATE TABLE Students(
  ST_id      VARCHAR(15) NOT NULL,
  ST_name    VARCHAR(10),
  ST_Regdate VARCHAR(12),
  ST_CGPA    DECIMAL(3, 2),
  ST_Semes   int,
  deptno     VARCHAR(10)
);

CREATE TABLE EMPLOYEE(
   empno      INTEGER NOT NULL,
   name       VARCHAR(10),
   job        VARCHAR(9),
   boss       INTEGER,
   hiredate   VARCHAR(12),
   salary     DECIMAL(7, 2),
   comm       DECIMAL(7, 2),
   deptno     INTEGER
);
 
CREATE TABLE marks(
   ST_id     VARCHAR(15) NOT NULL,
   C_id       VARCHAR(14) NOT NULL,
   GPA   VARCHAR(13)
);

CREATE TABLE salary(
   empno      INTEGER NOT NULL,
   Salary     INTEGER NOT NULL,
   Methods    VARCHAR(10) NOT NULL
);

CREATE TABLE course (
   C_id      VARCHAR(10) NOT NULL,
   C_name        VARCHAR(9) NOT NULL,
   C_Creadit        DECIMAL(7, 2),
   Teacher       DECIMAL(7, 2)
);

-- Primary Keys and constraints
ALTER TABLE Students
   ADD CONSTRAINT ST_PK
   PRIMARY KEY (ST_id);

ALTER TABLE EMPLOYEE
   ADD CONSTRAINT em_pk
   PRIMARY KEY (empno);

ALTER TABLE course
   ADD CONSTRAINT c_PK
   PRIMARY KEY (C_id);
 

ALTER TABLE salary
   ADD CONSTRAINT empfk
   FOREIGN KEY (empno)
   REFERENCES EMPLOYEE (empno);
   
ALTER TABLE marks
   ADD CONSTRAINT marksfk
   FOREIGN KEY (ST_id)
   REFERENCES Students (ST_id);

      
ALTER TABLE marks
   ADD CONSTRAINT msfk
   FOREIGN KEY (C_id)
   REFERENCES course (C_id);


   
INSERT INTO course VALUES ('CS8983', 'DBMS',3,3);
INSERT INTO course VALUES ('CS456', 'DBMS lab',3,3);
INSERT INTO course VALUES ('CS8984', 'DDA',3,3);
INSERT INTO course VALUES ('CS8988', 'DSA',3,3);



INSERT INTO EMPLOYEE VALUES (7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
INSERT INTO EMPLOYEE VALUES (7566, 'JONES',  'MANAGER',   7839, '1981-04-02',  2975, NULL, 20);
INSERT INTO EMPLOYEE VALUES(7788, 'SCOTT',  'ANALYST',   7566, '1982-12-09', 3000, NULL, 20);
INSERT INTO EMPLOYEE VALUES(7876, 'ADAMS',  'CLERK',     7788, '1983-01-12', 1100, NULL, 20);
INSERT INTO EMPLOYEE VALUES(7902, 'FORD',   'ANALYST',   7566, '1981-12-03',  3000, NULL, 20);
INSERT INTO EMPLOYEE VALUES(7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800, NULL, 20);
INSERT INTO EMPLOYEE VALUES (7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01',  2850, NULL, 30);
INSERT INTO EMPLOYEE VALUES(7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30);

INSERT INTO Students VALUES('FA19BSSE0014', 'M.Fahad', '1981-02-22', 3.60,  4, 'BSSE');
INSERT INTO Students VALUES('FA19BSSE0030', 'M', '1981-02-22', 3.60,  4, 'BSSE');
INSERT INTO Students VALUES('FA19BSSE0020', 'Muhammad', '1981-02-22', 3.60,  4, 'BSSE');
INSERT INTO Students VALUES('FA19BSSE0024', 'Fahad', '1981-02-22', 3.60,  4, 'BSSE');


select * from EMPLOYEE;
select * from Students;
select * from marks;
select * from salary;
select * from course;

drop table Students