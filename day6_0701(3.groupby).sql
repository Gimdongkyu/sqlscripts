--주제: 행을 그룹화 합니다. 사용하는 순서는 아래처럼 합니다.
-- select문 그룹함수 from 테이블 이름 
-- [where]	그룹화 하기 전에 사용할 조건식
-- group by 그룹화에 사용할 컬럼명
-- [HAVING] 그룹화 결과에 대하 조건식
-- [order by] 그룹화 결과 정렬할 컬럼명과 방식

SELECT PCODE,count(*) FROM TBL_BUY tb GROUP BY PCODE;

SELECT PCODE,count(*),sum(quantity) 
	FROM TBL_BUY tb 
	GROUP BY PCODE;
	--ORDER BY 2; 	--조회된 컬럼의 위치

	SELECT PCODE,count(*) cnt,sum(quantity)total 
	FROM TBL_BUY tb 
	GROUP BY PCODE
	ORDER BY cnt; 	-- 그룹 함수 결과의 별칭
	
--그룹화 후에 수량합계가 3 이상만 조회	
	SELECT PCODE,count(*) cnt,sum(quantity)total 
	FROM TBL_BUY tb 
	GROUP BY PCODE
-- having total >= 3 	--having 에는 컬럼 별칭 사용 못함, 테이블 컬럼명은 사용할 수 있음.
	HAVING sum(QUANTITY) >= 3	
	ORDER BY cnt; 	-- 그룹 함수 결과의 별칭

-- 구매 날짜가 2022-04-01 이후인 것만 그룹화하여 조회

	SELECT PCODE,count(*) cnt,sum(quantity)total 
	FROM TBL_BUY tb
	WHERE BUY_DATE < '2022-04-01'
	GROUP BY PCODE
	ORDER BY cnt; 	-- 그룹 함수 결과의 별칭

	
--Day2 참고
--통계 함수 : count,avg,max,min,sum. 통계함수는 그룹함수라고도 합니다.
--						해당 함수 결과값을 구하기 위해 특정 컬럼 사용하여  여러 데이터를 그룹화한 후 실행

SELECT COUNT(*) FROM EMPLOYEES e ;			--테이블 전체 데이터 갯수   :107
SELECT MAX(salary) FROM EMPLOYEES e ; 		-- salary 칼럼의 최대값  :24000
SELECT MIN(salary) FROM EMPLOYEES e ;		-- salary 칼럼의 최소값  :2100
SELECT AVG(salary) FROM EMPLOYEES e ;		-- 		       평균값  :6461 
SELECT SUM(salary) FROM EMPLOYEES e ;		--				합계	 :691416

--위 5개 통계함수를 JOB_ID = 'IT_PROG' 값을 조건식으로 똑같이 실행해보기
SELECT count(*) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';
SELECT MAX(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--9000
SELECT MIN(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--4200
SELECT AVG(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--5760
SELECT SUM(SALARY) FROM EMPLOYEES e WHERE JOB_ID = 'IT_PROG';	--28800

-- 통계함수 결과는 다른 걸럼값과 같이 조회 못합니다.(그룹함수이기 때문입니다.)
SELECT JOB_ID, count(*) FROM EMPLOYEES e 
WHERE JOB_ID = 'IT_PROG'; --오류: 단일 그룹의 그룹 함수가 아닙니다.





