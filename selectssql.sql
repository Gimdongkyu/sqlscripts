select * from member_tbl_02;
select * from meney_tbl_02;



-- ȸ�� ������ȸ ���ΰ� group by


SELECT custno, sum(price) FROM MONEY_TBL_02 mt 
GROUP BY CUSTNO ;

SELECT custno, sum(price) asum FROM MONEY_TBL_02 mt
GROUP BY CUSTNO 
ORDER BY asum DESC;

-- step 3)cust no �÷����� ����2) �� �� ���̺� �����Ͽ� ������ ��ü ��������
SELECT*FROM MEMBER_TBL_02 mt
	   JOIN (SELECT custno, sum(price) asum FROM MONEY_TBL_02 mt2 
	   		  GROUP BY custno ORDER BY asum DESC) mt3
	   ON mt.CUSTNO = mt3.custno;
-- �Ǵ�
select*from member_tbl_02 mt join
      	    (select custno, sum(price) as asum from money_tbl_02 mt
		group by custno
		order by asum desc) sale
	    on mt.custno = sale.custno ;
decode(grade,'A','VIP','B','�Ϲ�','C','����')

-- step 4) ������ �䱸���׿� ���� �÷���� �����ϱ�	
   select 	      mt.CUSTNO,
	      mt.CUSTNAME,
	      decode(mt.GRADE,'A','VIP','B','�Ϲ�','C','����') AS  agrade,
	      sale.asum 
    from  member_tbl_02 mt,
	     (select custno, sum(price) AS asum from money_tbl_02
		group by custno
		order by asum desc) sale
    where mt.custno = sale.custno;




