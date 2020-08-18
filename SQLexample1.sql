CREATE TABLE EMPLOYEE 
( 	Fname	varchar(15) NOT NULL,
	Minit	char,
	Lname	varchar(15) NOT NULL,
	Ssn		char(9) 	NOT NULL,
	Bdate	date,
	Address	varchar(30),
	Sex		char,
	Salary	decimal(10,2),
	Super_ssn	char(9),
	Dno		int			NOT NULL,
	PRIMARY KEY (Ssn)
);

CREATE TABLE DEPARTMENT
(	Dname	varchar(15)	NOT NULL,
	Dnumber	int			NOT NULL,
	Mgr_ssn char(9)		NOT NULL,
	Mgr_start_data date,
	PRIMARY KEY (Dnumber),
	UNIQUE (Dname),
	FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn)
);

CREATE TABLE DEPT_LOCATIONS
(	Dnumber int			NOT NULL,
	Dlocation varchar(15)	NOT NULL,
	PRIMARY KEY (Dnumber, Dlocation),
	FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE PROJECT
(	Pname	varchar(15)	NOT NULL,
	Pnumber int			NOT NULL,
	Plocation varchar(15),
	Dnum 	int			NOT NULL,
	PRIMARY KEY (Pnumber),
	UNIQUE (Pname),
	FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE WORKS_ON
(	Essn	char(9)		NOT NULL,
	Pno 	int			NOT NULL,
	Hours	decimal(3,1) NOT NULL,
	PRIMARY KEY (Essn, Pno),
	FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
	FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber)
);

CREATE TABLE DEPENDENT
(	Essn	char(9)		NOT NULL,
	Dependent_name varchar(15) NOT NULL,
	Sex		char,
	Bdate	date,
	Relationship varchar(8),
	PRIMARY KEY (Essn, Dependent_name),
	FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn)
);

