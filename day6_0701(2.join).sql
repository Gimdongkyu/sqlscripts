-- ���� custom_id 'mina012' �� ������ ���� ��ȸ : pcode ��ȸ�ϰ� pcame�� �� �� ����
SELECT PCODe FROM TBL_BUY WHERE CUSTOM_ID = 'mina012';

--1. ��������(select �ȿ� select�� �����)

SELECT pname FROM TBL_PRODUCT tp --�ܹ�����
	WHERE pcode = 				-- ���ǽ��� = �����̹Ƿ� ���������� 1�� �� ����̾�� ��.
	(SELECT pcode FROM tbl_buy WHERE custom_id = 'mina012' --��������
						AND buy_date = '2022-2-6');
					
SELECT pname FROM TBL_PRODUCT tp 
	WHERE pcode IN		-- ���ǽ��� IN �����̹Ƿ� ���������� ������ �� ��� ������.
		(SELECT PCODE FROM TBL_BUY tb WHERE custom_id = 'mina012');

	-- ���� ���� �׽�Ʈ
SELECT pcode FROM tbl_buy WHERE custom_id = 'mina012' --��������
						AND buy_date = '2022-2-6';
						
SELECT PCODE FROM TBL_BUY tb WHERE custom_id = 'mina012';

-- ���������� ������ : �ܺ�Ŀ���� ���ǽ��� ��� �࿡ ���� �˻��Ҷ����� ���������� ����ǹǷ�
--			ó�� �ӵ��� ������ ����ϴ�. --> ���̺��� ���� ���� ������� �����մϴ�.

-- 2.select �� join : �� �̻��� ���̺�(�ַ� ���������� ���̺�)�� �����Ͽ� �����͸� ��ȸ�ϴ� ���

-- ���� ���� : �� �̻��� ���̺��� ����� �÷��� ���� �� �÷����� '����(=)'�� �̿��Ͽ� join �մϴ�.
-- ���� 1: select ~~~from ���̺�1 a, ���̺�2 b
--						where a.�����÷�1=b.�����÷�1; 

--������ ���� ��ǰ �߰�
INSERT INTO TBL_PRODUCT VALUES ('GALAXY22','A1','������s22',555600);

-- join Ű���� ���� ����1
SELECT *FROM TBL_PRODUCT tp ,TBL_BUY tb  -- ������ ���̺� 2��
		WHERE tp.PCODE = tb.PCODE ; -- ��������.���� �÷����� = �����
		
-- join Ű���带 ���� ��ɹ� ����2(ANSI ǥ��)
SELECT*FROM TBL_PRODUCT tp 
		JOIN TBL_BUY tb 
		ON tp.PCODE = tb.PCODE;	 -- ��������.���� �÷����� = �����
		
--���� �׽�Ʈ : tbl_custom �� tbl_buy �� �����غ�����

--1		
SELECT*FROM TBL_CUSTOM tc, TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID ;

--2	
SELECT*FROM TBL_CUSTOM tc 
		JOIN TBL_BUY tb 
		ON tc.CUSTOM_ID =tb.CUSTOM_ID ;
	
--mina012 �� ������ ��ǰ���� �����ΰ� ��ȸ�ϱ�
	SELECT tp.pname FROM TBL_PRODUCT tp ,TBL_BUY tb 
			WHERE tp.PCODE =tb.PCODE AND custom_id='mina012';
		
-- �����Ҵ�, �̸��� ���� �÷��� ���̺���� �� �����ؾ� �մϴ�.		
	-- ���� �� ����� ���� ���̺��� ��� �÷��� �������ϴ�. -> �÷��� �� 9�� 
	-- �ΰ��� ���� ���� �ุ �������ϴ�. -> ���� �� 6��	

-- ������ ������� Ư�� �÷��� ��ȸ
SELECT tc.CUSTOM_ID ,name,reg_date,pcode,quantity 
		FROM TBL_CUSTOM tc, TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID ;		
		
-- �������� �ܿ� �ٸ� ������ �߰�	
	SELECT tc.CUSTOM_ID ,name,reg_date,pcode,quantity 
	FROM TBL_CUSTOM tc, TBL_BUY tb 
	WHERE tc.CUSTOM_ID =tb.CUSTOM_ID AND tc.CUSTOM_ID ='mina012'; 

--mina012�� ������ ��ǰ���� �����ΰ� ��ȸ�ϱ�
SELECT tp.PNAME  FROM TBL_PRODUCT tp ,TBL_BUY tb 
	WHERE tp.PCODE = tb.PCODE AND custom_id = 'mina012' AND buy_date ='2022-2-6';

SELECT tp.PNAME  FROM TBL_PRODUCT tp JOIN TBL_BUY tb 
				ON tp.PCODE=tb.PCODE AND custom_id = 'mina012';

SELECT tp.pname FROM TBL_PRODUCT tp JOIN TBL_BUY tb 
				ON tp.PCODE=tb.PCODE AND custom_id = 'mina012' AND buy_date = '2022-2-6' ;
			
--3���� ���̺��� ������ �� �������?
SELECT*FROM TBL_PRODUCT tp ,			
		(SELECT tc.CUSTOM_ID cused,name,EMAIL,AGE ,REG_DATE ,pcode, quantity,buy_date,buyno 
		FROM TBL_CUSTOM tc, TBL_BUY tb 
		WHERE tc.CUSTOM_ID =tb.CUSTOM_ID) temp -- ù��° ����
 WHERE tp.pcode = temp.pcode ; -- �ι�° ����			
			
 SELECT*FROM TBL_BUY tb ,TBL_CUSTOM tc ,TBL_PRODUCT tp 
 		WHERE tb.CUSTOM_ID = tc.CUSTOM_ID AND tb.PCODE = tp.PCODE;  
	
-- Ư�� �÷��� ��ȸ�ϱ�
SELECT tb.custom_id ,tb.pcode,name,age,pname,quantity,buy_date
		FROM TBL_BUY tb ,TBL_CUSTOM tc,TBL_PRODUCT tp 
		WHERE tc.CUSTOM_ID = tb.CUSTOM_ID AND tp.PCODE = tb.PCODE;
	
-- 3. �ܺ� ����(outer join) : = ������ ����ϴ� �����̳� ���ʿ� ���°��� ���ΰ���� ����.  

-- join Ű���� ���� ����1
SELECT *FROM TBL_PRODUCT tp ,TBL_BUY tb  -- ������ ���̺� 2��
		WHERE tp.PCODE = tb.PCODE(+) ; -- �ܺ����� tbl_buy ���̺� ��ġ�ϴ� pcode ���� ��� ����.
		
-- join Ű���带 ���� ��ɹ� ����2(ANSI ǥ��)
SELECT*FROM TBL_PRODUCT tp 
		LEFT OUTER JOIN TBL_BUY tb 
		ON tp.PCODE = tb.PCODE;	 --tlb_product �� ���� ���̺��̸� �� ���� ��� �����Ͽ� ����
		
SELECT*FROM TBL_BUY tb
		RIGHT OUTER JOIN TBL_PRODUCT tp 
		ON tb.PCODE = tp.PCODE;
	
	
	
	
	
	
	
