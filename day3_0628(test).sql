CREATE TABLE students(
hakbun char(7) PRIMARY KEY,
name nvarchar2(4) NOT NULL,
age number(2),
addr nvarchar2(10)
);

INSERT INTO students(hakbun,name,age,addr)
values('2021001','����',16,'���ʱ�');
INSERT INTO students(hakbun,name,age,addr) 
values('2019019','������',18,'������');

SELECT*FROM STUDENTS;


CREATE TABLE scores(
hakbun char(7) NOT NULL, 
sub nvarchar2(5) NOT NULL,
grade NUMBER(3) NOT NULL,  
teacher nvarchar2(4) NOT NULL,
hakgi char(6) NOT NULL
);

INSERT INTO scores(hakbun,sub,grade,teacher,hakgi)
VALUES ('2021001','����',89,'�̳���','2022_1');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2021001','����',78,'��浿','2022_1');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2021001','����',67,'�ڼ���','2021_2');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2019019','����',92,'�̳���','2019_2');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2019019','����',85,'������','2019_2');
INSERT INTO scores(hakbun,sub,grade,teacher,hakgi) 
VALUES ('2019019','����',88,'�ڼ���','2020_1');

SELECT*FROM SCORES;