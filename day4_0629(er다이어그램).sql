CREATE TABLE students(  --학생
	stuno char(7) PRIMARY KEY,
	name nvarchar2(20) NOT NULL,
	age number(3) CHECK (age BETWEEN 10 AND 30),
	address nvarchar2(50)
);

CREATE TABLE num( --학적
stunum char(5) PRIMARY KEY,
stuno char(7),
grade NUMBER(1) NOT NULL, 
class number(2) NOT NULL,
teacherID NUMBER(7),
FOREIGN KEY (stuno) REFERENCES STUDENTS (stuno),
FOREIGN KEY (teacherID) REFERENCES TEACH (teacherID)
);

CREATE TABLE sub( --교과목
subjectID char(7) PRIMARY KEY,
subname nvarchar2(20) NOT NULL,
grades NUMBER(3)
);

CREATE TABLE scores(  --성적
	stuno char(7),
	subjectID char(7),
	jumsu number(3) NOT NULL,	-- 점수
	teacherID number(7) NOT NULL,
	term char(6) NOT NULL,	-- 학기
	PRIMARY KEY (stuno,subjectID), 
	FOREIGN KEY (stuno) REFERENCES students(stuno),
	FOREIGN KEY (teacherID) REFERENCES TEACH (teacherID),
	FOREIGN KEY (subjectID) REFERENCES SUB (subjectID)
	);

CREATE TABLE teach ( --교사
teacherID NUMBER(7) PRIMARY KEY,
name NUMBER(3),
tage NUMBER(3),
addr nvarchar2(050)
);







