-- ANSI ���ڵ� �������� hrd_0712.sql ������ �Ѳ����� �����ŵ�ϴ�.

-- �ݵ�� ������ �� �����ؼ� �ϼ���.
-- step 1
create table member_tbl_02(
    custno number(6) primary key,
    custname varchar2(20),
    phone varchar2(13),
    address varchar2(60),
    joindate date,
    grade char(1),
    city char(2)
);

create table money_tbl_02(
    custno number(6) not null,
    salenol number(8) not null,
    pcost number(8),
    amount number(4),
    price number(8),
    pcode varchar2(4),
    sdate date,
    primary key(custno,salenol),
    foreign key(custno) references member_tbl_02(custno)
);

-- step 2
CREATE SEQUENCE member_seq START WITH 100001;

-- step 3: �������̺� insert
INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) VALUES (member_seq.nextval,'���ູ','010-111-2222','����� ���빮�� �ְ�1��','2015-12-02','A','01');
INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) VALUES (member_seq.nextval,'���ູ','010-111-3333','����� ���빮�� �ְ�2��','2015-12-06','B','01');
INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) VALUES (member_seq.nextval,'�����','010-111-4444','�︪�� �︪�� ����1��','2015-10-01','B','30');
INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) VALUES (member_seq.nextval,'�ֻ��','010-111-5555','�︪�� �︪�� ����2��','2015-11-13','A','30');
INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) VALUES (member_seq.nextval,'����ȭ','010-111-6666','���ֵ� ���ֽ� �ܳ�����','2015-12-25','B','60');
INSERT INTO MEMBER_TBL_02 (CUSTNO,CUSTNAME,PHONE,ADDRESS,JOINDATE,GRADE,CITY) VALUES (member_seq.nextval,'������','010-111-7777','���ֵ� ���ֽ� ��������','2015-12-11','C','60');

-- step 4 : �����ϴ� ���̺� insert
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100001,20160001,500,5,2500,'A001','2016-01-01');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100001,20160002,1000,4,4000,'A002','2016-01-01');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100001,20160003,500,3,1500,'A008','2016-01-01');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100002,20160004,2000,1,2000,'A004','2016-01-02');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100002,20160005,500,1,500,'A001','2016-01-03');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100003,20160006,1500,2,3000,'A003','2016-01-03');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100004,20160007,500,2,1000,'A001','2016-01-04');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100004,20160008,300,1,300,'A005','2016-01-04');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100004,20160009,600,1,600,'A006','2016-01-04');
INSERT INTO MONEY_TBL_02 (CUSTNO,SALENOL,PCOST,AMOUNT,PRICE,PCODE,SDATE) VALUES (100004,20160010,3000,1,3000,'A007','2016-01-06');


-- insert ��� Ȯ��
select * from member_tbl_02;
select * from money_tbl_02;