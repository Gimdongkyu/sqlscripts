CREATE TABLE students(  --�л�
	stuno char(7) PRIMARY KEY,
	name nvarchar2(20) NOT NULL,
	age number(3) CHECK (age BETWEEN 10 AND 30),
	address nvarchar2(50)
);

CREATE TABLE num( --����
stunum char(5) PRIMARY KEY,
stuno char(7),
grade NUMBER(1) NOT NULL, 
class number(2) NOT NULL,
teacherID NUMBER(7),
FOREIGN KEY (stuno) REFERENCES STUDENTS (stuno),
FOREIGN KEY (teacherID) REFERENCES TEACH (teacherID)
);

CREATE TABLE sub( --������
subjectID char(7) PRIMARY KEY,
subname nvarchar2(20) NOT NULL,
grades NUMBER(3)
);

CREATE TABLE scores(  --����
	stuno char(7),
	subjectID char(7),
	jumsu number(3) NOT NULL,	-- ����
	teacherID number(7) NOT NULL,
	term char(6) NOT NULL,	-- �б�
	PRIMARY KEY (stuno,subjectID), 
	FOREIGN KEY (stuno) REFERENCES students(stuno),
	FOREIGN KEY (teacherID) REFERENCES TEACH (teacherID),
	FOREIGN KEY (subjectID) REFERENCES SUB (subjectID)
	);

CREATE TABLE teach ( --����
teacherID NUMBER(7) PRIMARY KEY,
name NUMBER(3),
tage NUMBER(3),
addr nvarchar2(050)
);







