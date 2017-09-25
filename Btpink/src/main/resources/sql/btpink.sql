
DROP TABLE parent;
DROP TABLE teacher;
DROP TABLE cctv;
DROP TABLE attendence;
DROP TABLE student;
DROP TABLE class;
DROP TABLE account;

CREATE TABLE account(
	memno 	VARCHAR2(50) 	PRIMARY KEY,
	name 	VARCHAR2(30) 	NOT NULL,
	type 	VARCHAR2(30) 	NOT NULL,
	id 	VARCHAR2(30)	NOT NULL,
	pw	VARCHAR2(30)	NOT NULL,
	email 	VARCHAR2(50) 	NOT NULL,
	phone 	VARCHAR2(50)	NOT NULL,
	status 	NUMBER	DEFAULT 0 NOT NULL
);

CREATE TABLE parent(
	memno 	 VARCHAR2(50)	CONSTRAINT PARENT_FK REFERENCES account(memno),
	stdno	 VARCHAR2(50),
	CONSTRAINT PARENT_PK PRIMARY KEY(memno)
);

CREATE TABLE teacher(
	memno 	 VARCHAR2(50)	PRIMARY KEY,
	rank	 VARCHAR2(50)	NOT NULL,
	CONSTRAINT TEACHER_FK FOREIGN KEY(memno) REFERENCES account(memno)
);


CREATE TABLE student(
	stdno		VARCHAR2(50)	PRIMARY KEY,
	name		VARCHAR2(30)	NOT NULL,
	age		NUMBER		NOT NULL,
	height		NUMBER		NOT NULL,
	classno		VARCHAR2(50)	,
	birth		DATE		NOT NULL,
	address		VARCHAR2(200)	NOT NULL,
	gender		VARCHAR2(50)	NOT NULL,
	parentno	VARCHAR2(50),
	personalid	varchar2(200),
	hateid		varchar2(100)
);


CREATE TABLE class(
	classno 	VARCHAR2(50)	PRIMARY KEY,
	classname	VARCHAR2(50)	NOT NULL,
	capa		NUMBER		,
	age		NUMBER,
	memno		VARCHAR2(50)	CONSTRAINT CLASS_FK REFERENCES account(memno) -- teacher의 memno
);


CREATE TABLE cctv(
	time		TIMESTAMP	PRIMARY KEY,
	count		NUMBER		NOT NULL,
	classno 	VARCHAR2(50)	CONSTRAINT CCTV_FK REFERENCES class(classno) 
);


CREATE TABLE attendence(
	stdno		VARCHAR2(50),
	classno		VARCHAR2(50)	CONSTRAINT ATTENDENCE_FK REFERENCES class(classno),
	today		DATE		DEFAULT sysdate,
	absent		NUMBER		DEFAULT 0,
	early		NUMBER		DEFAULT 0,
	sick		NUMBER		DEFAULT 0,
	late		NUMBER		DEFAULT 0,
	emotion		VARCHAR2(50),
  CONSTRAINT ATTENDENCE_PK PRIMARY KEY(stdno, today),
  CONSTRAINT ATTENDENCE2_FK FOREIGN KEY (stdno) REFERENCES student(stdno)
);



INSERT INTO account
VALUES ('admin_num', 'admin', 'admin', 'admin', 'admin', 'admin@admin.com', '010-9299-0044', 1);

INSERT INTO account
VALUES ('T201709071601', 't1', 't', 't1', 't1', 't1@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071601', 'AM');

INSERT INTO account
VALUES ('T201709071602', 't2', 't', 't2', 't2', 't2@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071602','E');

INSERT INTO account
VALUES ('T201709071603', 't3', 't', 't3', 't3', 't3@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071603','E');
INSERT INTO account
VALUES ('T201709071604', 't4', 't', 't4', 't4', 't4@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071604','E');
INSERT INTO account
VALUES ('T201709071605', 't5', 't', 't5', 't5', 't5@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071605','E');
INSERT INTO account
VALUES ('T201709071606', 't6', 't', 't6', 't6', 't6@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071606','E');
INSERT INTO account
VALUES ('T201709071607', 't7', 't', 't7', 't7', 't7@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071607','E');
INSERT INTO account
VALUES ('T201709071608', 't8', 't', 't8', 't8', 't8@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071608','E');
INSERT INTO account
VALUES ('T201709071609', 't9', 't', 't9', 't9', 't9@admin.com', '010-9299-0044', 1);
INSERT INTO teacher
VALUES ('T201709071609','E');

INSERT INTO class
VALUES ('c1', '햇살', 5, 'T201709071601');
INSERT INTO class
VALUES ('c2', '바람', 5, 'T201709071602');
INSERT INTO class
VALUES ('c3', '토끼', 5, 'T201709071603');

INSERT INTO class
VALUES ('c4', '요괴', 6, 'T201709071604');
INSERT INTO class
VALUES ('c5', '하늘', 6, 'T201709071605');
INSERT INTO class
VALUES ('c6', '구름', 6, 'T201709071606');

INSERT INTO class
VALUES ('c7', '나무', 7, 'T201709071607');
INSERT INTO class
VALUES ('c8', '풀잎', 7, 'T201709071608');
INSERT INTO class
VALUES ('c9', '열매', 7, 'T201709071609');

INSERT INTO account
VALUES ('P201709071658', '엄마1', 'p', 'p1', 'p1', 'p1@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071658','S201709071658');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071658', 'stu1', 5, 120, 'c1', TO_DATE('20120907','YYYYMMDD'), 'address1', 'M','P201709071658','personalid');

INSERT INTO account
VALUES ('P201709071659', '엄마2', 'p', 'p2', 'p2', 'p2@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071659','S201709071659');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071659', 'stu2', 5, 121, 'c1', TO_DATE('20120908','YYYYMMDD'), 'address2', 'M','P201709071659','personalid');

INSERT INTO account
VALUES ('P201709071600', '엄마3', 'p', 'p3', 'p3', 'p3@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071600','S201709071600');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071600', 'stu3', 5, 122, 'c1', TO_DATE('20120909','YYYYMMDD'), 'address3', 'M','P201709071600','personalid');




INSERT INTO account
VALUES ('P201709071601', '엄마4', 'p', 'p4', 'p4', 'p4@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071601','S201709071601');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071601', 'stu4', 5, 123, 'c2', TO_DATE('20120910','YYYYMMDD'), 'address4', 'W','P201709071601','personalid');

INSERT INTO account
VALUES ('P201709071602', '엄마5', 'p', 'p5', 'p5', 'p5@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071602','S201709071602');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071602', 'stu5', 5, 127, 'c2', TO_DATE('20120911','YYYYMMDD'), 'address5', 'M','P201709071602','personalid');

INSERT INTO account
VALUES ('P201709071603', '엄마6', 'p', 'p6', 'p6', 'p6@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071603','S201709071603');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071603', 'stu6', 5, 121, 'c2', TO_DATE('20120912','YYYYMMDD'), 'address6', 'W','P201709071603','personalid');




INSERT INTO account
VALUES ('P201709071604', '엄마7', 'p', 'p7', 'p7', 'p7@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071604','S201709071604');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071604', 'stu7', 5, 123, 'c3', TO_DATE('20120909','YYYYMMDD'), 'address7', 'M','P201709071604','personalid');

INSERT INTO account
VALUES ('P201709071605', '엄마8', 'p', 'p8', 'p8', 'p8@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071605','S201709071605');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071605', 'stu8', 5, 127, 'c3', TO_DATE('20120911','YYYYMMDD'), 'address8', 'W','P201709071605','personalid');

INSERT INTO account
VALUES ('P201709071606', '엄마9', 'p', 'p9', 'p9', 'p9@admin.com', '010-9299-0044', 1);
INSERT INTO parent
VALUES ('P201709071606','S201709071606');
INSERT INTO student (stdno, name, age, height, classno, birth, address, gender, parentno, personalid)
VALUES ('S201709071606', 'stu9', 5, 121, 'c3', TO_DATE('20120912','YYYYMMDD'), 'address9', 'M','P201709071606','personalid');


commit;
