--����: ���� �׷�ȭ �մϴ�. ����ϴ� ������ �Ʒ�ó�� �մϴ�.
-- select�� �׷��Լ� from ���̺� �̸� 
-- [where]	�׷�ȭ �ϱ� ���� ����� ���ǽ�
-- group by �׷�ȭ�� ����� �÷���
-- [HAVING] �׷�ȭ ����� ���� ���ǽ�
-- [order by] �׷�ȭ ��� ������ �÷���� ���

SELECT PCODE,count(*) FROM TBL_BUY tb GROUP BY PCODE;

SELECT PCODE,count(*),sum(quantity) 
	FROM TBL_BUY tb 
	GROUP BY PCODE;
	--ORDER BY 2; 	--��ȸ�� �÷��� ��ġ

	SELECT PCODE,count(*) cnt,sum(quantity)total 
	FROM TBL_BUY tb 
	GROUP BY PCODE
	ORDER BY cnt; 	-- �׷� �Լ� ����� ��Ī
	
--�׷�ȭ �Ŀ� �����հ谡 3 �̻� ��ȸ	
	SELECT PCODE,count(*) cnt,sum(quantity)total 
	FROM TBL_BUY tb 
	GROUP BY PCODE
-- having total >= 3 	--having ���� �÷� ��Ī ��� ����, ���̺� �÷����� ����� �� ����.
	HAVING sum(QUANTITY) >= 3	
	ORDER BY cnt; 	-- �׷� �Լ� ����� ��Ī

-- ���� ��¥�� 2022-04-01 ������ �͸� �׷�ȭ�Ͽ� ��ȸ

	SELECT PCODE,count(*) cnt,sum(quantity)total 
	FROM TBL_BUY tb
	WHERE BUY_DATE < '2022-04-01'
	GROUP BY PCODE
	ORDER BY cnt; 	-- �׷� �Լ� ����� ��Ī

	
--Day2 ����
--��� �Լ� : count,avg,max,min,sum. ����Լ��� �׷��Լ���� �մϴ�.
--						�ش� �Լ� ������� ���ϱ� ���� Ư�� �÷� ����Ͽ�  ���� �����͸� �׷�ȭ�� �� ����

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





