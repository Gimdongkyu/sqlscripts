CREATE TABLE book_member(
mem_idx NUMBER(5,0) PRIMARY KEY,
name varchar2(20) NOT NULL,
email varchar2(20) UNIQUE,
tel varchar2(20) UNIQUE,
password varchar2(10)
);

CREATE TABLE tbl_book(
bcode char(5) PRIMARY KEY,
title varchar2(30) NOT NULL,
writer varchar2(20),
publisher varchar2(20),
pdate DATE 
);

CREATE TABLE tbl_bookrent(
rent_no NUMBER(5,0) PRIMARY KEY,
mem_idx NUMBER(5,0) NOT NULL,
bcode char(5) NOT NULL,
rent_date DATE NOT NULL,
exp_date DATE NOT NULL,
return_date DATE,
delay_days NUMBER(3,0),
FOREIGN KEY (mem_idx) REFERENCES book_member (mem_idx),
FOREIGN KEY (bcode) REFERENCES tbl_book (bcode)
);

CREATE SEQUENCE rent_no;


CREATE SEQUENCE memidx
START WITH 10001;

-- �� ���
INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(MEMIDX.nextval,'���ϴ�','honey@naver.com','010-9889-0567','1122');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'�̼���','jong@daum.net','010-2354-6773','2345');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'�����','lucky@korea.com','010-5467-8792','9876');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'���浿','nadong@kkk.net','010-3456-8765','3456');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'������','haha@korea.net','010-3987-9087','1234');

-- TBL_BOOK 
INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('A1101','�ڽ���','Į���̰�','���̾𽺺Ͻ�',to_date('06/12/01','YYYY/MM/DD'));
-- ���ڿ����� ����Ÿ�����δ� �ڵ�ĳ���õ˴ϴ�. �Լ��� ����� ������ to_date()�Լ��� ����մϴ�.
-- ����: ��¥Ÿ���� ���ڿ��� ��ȯ��Ű�� ����? to_char()�Լ�
INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('B1101','��Ŀ������','����Ŀ','��Ŀ����',to_date('2018-07-10','YYYY-MM-DD'));

INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('C1101','Ǫ������ �ʹϴ�','����','â��',to_date('2015-06-20','YYYY-MM-DD'));

INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('A1102','�佺Ʈ','�˺���Ʈ �','������',to_date('2006-12-01','YYYY-MM-DD'));

-- TBL_BOOKRENT 

INSERT INTO TBL_BOOKRENT(rent_no,MEM_IDX,BCODE,RENT_DATE,EXP_DATE,return_date)  
VALUES(rent_no.nextval,10001,'B1101','2021-09-01','2021-09-15','2021-09-04');
 
INSERT INTO TBL_BOOKRENT(rent_no,MEM_IDX,BCODE,RENT_DATE,EXP_DATE,return_date)  
VALUES(rent_no.nextval,10002,'C1101','2021-09-12','2021-09-26','2021-09-29');

INSERT INTO TBL_BOOKRENT(rent_no,MEM_IDX,BCODE,RENT_DATE,EXP_DATE,return_date)  
VALUES(rent_no.nextval,10003,'B1101','2021-09-03','2021-09-17','2021-09-17');

INSERT INTO TBL_BOOKRENT(rent_no,MEM_IDX,BCODE,RENT_DATE,EXP_DATE)  
VALUES(rent_no.nextval,10004,'C1101','2022-06-30','2022-07-14');

INSERT INTO TBL_BOOKRENT(rent_no,MEM_IDX,BCODE,RENT_DATE,EXP_DATE)  
VALUES(rent_no.nextval,10001,'A1101','2022-07-04','2022-07-18');

INSERT INTO TBL_BOOKRENT(rent_no,MEM_IDX,BCODE,RENT_DATE,EXP_DATE,return_date)  
VALUES(rent_no.nextval,10003,'A1102','2022-07-06','2022-07-20','2022-07-13');








