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

-- 북 멤버
INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(MEMIDX.nextval,'이하니','honey@naver.com','010-9889-0567','1122');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'이세종','jong@daum.net','010-2354-6773','2345');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'최행운','lucky@korea.com','010-5467-8792','9876');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'나길동','nadong@kkk.net','010-3456-8765','3456');

INSERT INTO BOOK_MEMBER(mem_idx,NAME,EMAIL,TEL,PASSWORD)
VALUES(memidx.nextval,'강감찬','haha@korea.net','010-3987-9087','1234');

-- TBL_BOOK 
INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('A1101','코스모스','칼세이건','사이언스북스',to_date('06/12/01','YYYY/MM/DD'));
-- 문자열에서 날자타입으로는 자동캐스팅됩니다. 함수를 사용할 때에는 to_date()함수를 사용합니다.
-- 참고: 날짜타입을 문자열로 변환시키는 것은? to_char()함수
INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('B1101','해커스토익','이해커','해커스랩',to_date('2018-07-10','YYYY-MM-DD'));

INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('C1101','푸른사자 와니니','이현','창비',to_date('2015-06-20','YYYY-MM-DD'));

INSERT INTO TBL_BOOK(bcode,TITLE,WRITER,PUBLISHER,PDATE)
VALUES('A1102','페스트','알베르트 까뮈','민음사',to_date('2006-12-01','YYYY-MM-DD'));

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








