-- DDL : create, alter, drop, TRUNCATE / ����� �� ���� ��ɾ��
--  (����� user, table, seqence, view,..., �� truncate �� ���̺� ���)
-- DML : insert, update, delete	 


DROP table STUDENTS;-- ���� : students ���̺� ���� �����ϸ�
		-- ���� : �ܷ� Ű�� ���� �����Ǵ� ����/�⺻ Ű�� ���̺� �ֽ��ϴ�.
DROP  table scores;

--UPDATE ���̺�� SET �÷��� = ��,�÷���=��,�÷���=��,....
--WHERE �����÷� �����
-- DELETE FROM ���̺�� WHERE �����÷� �����
--���� �� �� : update �� delete �� where ���� ����ϴ°��� ������ ����.
--	 TRUNCATE �� ������ ���(rollback) �� �� ���� ������ DDL�� ���մϴ�. 


-- UPDATE ,delete, select ���� where�� �÷��� �⺻Ű �÷����� ���������̸�
--  	����Ǵ� ��� �ݿ��Ǵ� ���� ��ϱ��? �ִ� 1��
--	�⺻Ű�� ������ ���̺��� ���� ����� ����(�ĺ�) �ϴ°� 

UPDATE STUDENTS SET age = 17 WHERE HAKBUN = 2021001;
SELECT *FROM STUDENTS s ;
-- rollback, commit �׽�Ʈ (������ ���̽� �޴����� Ʈ����� ��带 manual�� �����մϴ�.)
UPDATE STUDENTS SET ADDR  = '���ϱ�', age = 16 WHERE HAKBUN = 2021001; 
ROLLBACK;	-- ���� UPDATE ������ ���
SELECT*FROM STUDENTS; -- �ٽ� '���ʱ�', 17���� ����
UPDATE STUDENTS SET ADDR  = '���ϱ�', age = 16 WHERE HAKBUN = 2021001;
COMMIT;		-- �̹� COMMIT�� �� ��ɾ�� ROLLBACK ����.
SELECT*FROM STUDENTS ; -- '���ϱ�', 16���� �ݿ���
ROLLBACK;
SELECT *FROM STUDENTS s ;
-------------------------------------------�������
-- Ʈ����� ������� : rollback commit

DELETE FROM SCORES s;
ROLLBACK;
SELECT *FROM SCORES;

DELETE FROM SCORES s WHERE HAKBUN = 2019019;
SELECT *FROM SCORES;
-- �� ������� Ʈ����� ���� ����̰� ���� â������ SELECT ����� 2019019�� �����ϴ�.
-- �ٸ� ������� �ٸ� Ŭ���̾�Ʈ �̹Ƿ� ���� ����(���� Ŀ���� ����)�� �������ϴ�.
ROLLBACK;
SELECT *FROM SCORES;
-------------------------------------------������� 2��° ���� 
TRUNCATE TABLE SCORES ;		--��� �����͸� ����ϴ�. ROLLBACK ���� Ȯ��?
ROLLBACK;					-- �� : ROLLBACK �Ұ�.
-- ��絥���͸� ������� Ȯ���ϸ� �ٸ��͵�� ������ �ѹ���� �ʰ� Ȯ���ϰ� TRUNCATE �ض�.
-------------------------------------------
/*
 * ISNERT
 * DELETE
 * COMMIT;		(1) ���� 51, 52
 * UPDATE
 * DELETE;
 * ROLLBACK;	(2) ���� 54, 55
 * INSERT;
 * INSERT;
 * ROLLBACK;	(3)	���� 57, 58
 * INSERT
 * UPDATE;
 * COMMIT;		(4)���� 60, 61
 * 
 * 
 */

SELECT*FROM STUDENTS ;
SELECT*FROM SCORES s  ;