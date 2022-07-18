CREATE TABLE students(
hakbun char(7) PRIMARY KEY,
name nvarchar2(4) NOT NULL,
age number(2),
addr nvarchar2(10)
);

INSERT INTO students(hakbun,name,age,addr)
values('2021001','김모모',16,'서초구');
INSERT INTO students(hakbun,name,age,addr) 
values('2019019','강다현',18,'강남구');

SELECT*FROM STUDENTS;


CREATE TABLE scores(
hakbun char(7) NOT NULL, 
sub nvarchar2(5) NOT NULL,
grade NUMBER(3) NOT NULL,  
teacher nvarchar2(4) NOT NULL,
hakgi char(6) NOT NULL
);

INSERT INTO scores(hakbun,sub,grade,teacher,hakgi)
VALUES ('2021001','국어',89,'이나연','2022_1');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2021001','영어',78,'김길동','2022_1');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2021001','과학',67,'박세리','2021_2');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2019019','국어',92,'이나연','2019_2');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2019019','영어',85,'박지성','2019_2');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2019019','과학',88,'박세리','2020_1');

SELECT*FROM SCORES;