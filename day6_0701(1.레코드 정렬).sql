--SELECT �⺻����
--SELECT �÷�1, �÷�2....from ���̺�� where �˻����ǽ� 
-- order by �����÷�(�⺻�� ���� :asc, ����: desc)

SELECT*FROM TBL_BUY tb ; -- INSERT ������ ������ ��� ���
SELECT *FROM TBL_CUSTOM tc ;
SELECT *FROM TBL_CUSTOM tc ORDER BY CUSTOM_ID ;
SELECT *FROM TBL_BUY tb WHERE CUSTOM_ID = 'mina012';
SELECT *FROM TBL_BUY tb WHERE CUSTOM_ID = 'mina012'
					ORDER BY BUY_DATE DESC;	--WHERE ���� order BY ���� ��ŵ�ϴ�
					
-- ��ȸ�� �÷��� ������ �� DISTINCT Ű���� : �ߺ����� 1���� ��� ���.
SELECT custom_Id FROM TBL_BUY tb ;	-- ���Ű� ID��ȸ
SELECT DISTINCT custom_Id FROM TBL_BUY tb ; -- �ߺ����� 1����

-- 6/30 ��������
SELECT*FROM tbl_custom WHERE age >= 30;
SELECT EMAIL FROM TBL_CUSTOM WHERE CUSTOM_ID = 'twice';
SELECT PNAME  FROM TBL_PRODUCT WHERE CATEGORY ='A2';
SELECT max(price) FROM TBL_PRODUCT;
SELECT sum(quantity) FROM TBL_BUY WHERE PCODE = 'IPAD011';
SELECT PCODe FROM TBL_BUY WHERE CUSTOM_ID = 'mina012';
SELECT*FROM TBL_BUY WHERE PCODE LIKE '%0%'

SELECT*FROM TBL_BUY WHERE UPPER(PCODE) LIKE '%ON%';
SELECT*FROM TBL_BUY WHERE LOWER(PCODE) LIKE '%on%';