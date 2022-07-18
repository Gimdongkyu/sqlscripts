/*

  ���� ���̺� : ����_ID, �̸�, ��, �̸���, ����ȣ, �������, ����_ID
	   �޿�, �Ŵ���_ID, �μ�_ID,
1. hire_date�� 2006�� 1�� 1�� ������ ������ �̸�,��,�̸���

2. lastname�� 'Jones' �� ������ ��� �÷�	(������ �� ��ȸ)

3. salary �� 5000 �̻��� ������ �̸�,��,JOB_ID ��ȸ(�̻�� ���ϴ� = ����)

4. JOB_ID �� ACCOUNT �� ���� ������ �̸�,��,salary ��ȸ(like ����)

5. �μ�_ID �� 50 ,60, 80,90 �� ������ ����_ID, �̸�,�� ��ȸ(in ����)

*/

SELECT FIRST_NAME,Last_NAME,EMAIL FROM EMPLOYEES 
WHERE HIRE_DATE <'2006-01-01';

SELECT*FROM EMPLOYEES WHERE LAST_NAME  = 'Jones';
-- ��ҹ��� �˻�� ���ǽÿ� �����ؾ� �մϴ�.
-- �÷����� ��ҹ��� ��ȯ �� ���ǰ� �� -> ��ҹ��� �����ϰ� �˻��ϴ� ���
SELECT*FROM EMPLOYEES WHERE UPPER(LAST_NAME)  = 'JONES';
SELECT*FROM EMPLOYEES WHERE LOWER(LAST_NAME)  = 'jones';


SELECT LAST_NAME,FIRST_NAME,JOB_ID FROM EMPLOYEES 
WHERE SALARY >= 5000;

SELECT FIRST_NAME,LAST_NAME,salary FROM EMPLOYEES
WHERE JOB_ID LIKE '%ACCOUNT%';

-- ������ Ÿ�� ��ȯ
SELECT JOB_ID,FIRST_NAME,LAST_NAME FROM EMPLOYEES
WHERE DEPARTMENT_ID  IN (50,60,80,90);

SELECT *FROM EMPLOYEES WHERE DEPARTMENT_ID =60;
SELECT *FROM EMPLOYEES WHERE DEPARTMENT_ID ='60'; --�÷� ���Ŀ� ���� ��ȯ

--��� �Լ� : count, avg, max, min . ����Լ��� �׷��Լ���� �մϴ�.
--			�ش� �Լ� ������� ���ϱ� ���� Ư�� �÷� ����Ͽ� ���� �����͸� �׷�ȭ�� �� �����մϴ�.

SELECT COUNT(*) FROM EMPLOYEES e ;			--���̺� ��ü ������ ����   :107
SELECT MAX(salary) FROM EMPLOYEES e ; 		-- salary Į���� �ִ밪  :24000
SELECT MIN(salary) FROM EMPLOYEES e ;		-- salary Į���� �ּҰ�  :2100
SELECT AVG(salary) FROM EMPLOYEES e ;		-- 		       ��հ�  :6461 
SELECT SUM(salary) FROM EMPLOYEES e ;		--				�հ�	 :691416

--�� 5�� ����Լ��� JOB_ID = 'IT_PROG' ���� ���ǽ����� �Ȱ��� �����غ���
SELECT count(*) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';
SELECT MAX(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--9000
SELECT MIN(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--4200
SELECT AVG(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--5760
SELECT SUM(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--28800

-- ����Լ� ����� �ٸ� �ɷ����� ���� ��ȸ ���մϴ�.(�׷��Լ��̱� �����Դϴ�.)
SELECT JOB_ID, count(*) FROM EMPLOYEES e 
WHERE JOB_ID = 'IT_PROG'; --����: ���� �׷��� �׷� �Լ��� �ƴմϴ�.

--������ ��� : create table, insert into, select ~ where ~ �⺻ ����

--���� : ��Ī(alias) �÷� �Ǵ� ���̺� �̸��� �� �� ª�� �ٿ��� ���� �̸�.
SELECT *FROM EMPLOYEES e ;		-- EMPLOYEES ���̺��� ��Ī e
SELECT *FROM DEPARTMENTS d ;	-- DEPARTMENTS ���̺��� ��Ī d
-- �������� ���� ��Ī�� �ʿ�����ϴ�. �׷��� ������ �����ϰ� ���ϴ�.





