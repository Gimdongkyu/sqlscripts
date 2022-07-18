select * from member_tbl_02;
select * from meney_tbl_02;



-- 회원 매출조회 조인과 group by


SELECT custno, sum(price) FROM MONEY_TBL_02 mt 
GROUP BY CUSTNO ;

SELECT custno, sum(price) asum FROM MONEY_TBL_02 mt
GROUP BY CUSTNO 
ORDER BY asum DESC;

-- step 3)cust no 컬럼으로 스텝2) 와 고객 테이블 조인하여 고객정보 전체 가져오기
SELECT*FROM MEMBER_TBL_02 mt
	   JOIN (SELECT custno, sum(price) asum FROM MONEY_TBL_02 mt2 
	   		  GROUP BY custno ORDER BY asum DESC) mt3
	   ON mt.CUSTNO = mt3.custno;
-- 또는
select*from member_tbl_02 mt join
      	    (select custno, sum(price) as asum from money_tbl_02 mt
		group by custno
		order by asum desc) sale
	    on mt.custno = sale.custno ;
decode(grade,'A','VIP','B','일반','C','직원')

-- step 4) 제시한 요구사항에 따라 컬럼결과 변경하기	
   select 	      mt.CUSTNO,
	      mt.CUSTNAME,
	      decode(mt.GRADE,'A','VIP','B','일반','C','직원') AS  agrade,
	      sale.asum 
    from  member_tbl_02 mt,
	     (select custno, sum(price) AS asum from money_tbl_02
		group by custno
		order by asum desc) sale
    where mt.custno = sale.custno;




