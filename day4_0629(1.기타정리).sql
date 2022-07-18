-- DDL : create, alter, drop, TRUNCATE / 취소할 수 없는 명령어들
--  (대산은 user, table, seqence, view,..., 단 truncate 는 테이블만 사용)
-- DML : insert, update, delete	 


DROP table STUDENTS;-- 오류 : students 테이블 먼저 삭제하면
		-- 원인 : 외래 키에 의해 참조되는 고유/기본 키가 테이블에 있습니다.
DROP  table scores;

--UPDATE 테이블명 SET 컬럼명 = 값,컬럼명=값,컬럼명=값,....
--WHERE 조건컬럼 관계식
-- DELETE FROM 테이블명 WHERE 조건컬럼 관계식
--주의 할 점 : update 와 delete 는 where 없이 사용하는것은 위험한 동작.
--	 TRUNCATE 는 실향을 취소(rollback) 할 수 없기 때문에 DDL에 속합니다. 


-- UPDATE ,delete, select 에서 where의 컬럼이 기본키 컬럼으로 동등조건이면
--  	실행되는 결과 반영되는 행은 몇개일까요? 최대 1개
--	기본키의 목적은 테이블의 여러 행들을 구분(식별) 하는것 

UPDATE STUDENTS SET age = 17 WHERE HAKBUN = 2021001;
SELECT *FROM STUDENTS s ;
-- rollback, commit 테스트 (데이터 베이스 메뉴에서 트랜잭션 모드를 manual로 변경합니다.)
UPDATE STUDENTS SET ADDR  = '성북구', age = 16 WHERE HAKBUN = 2021001; 
ROLLBACK;	-- 위의 UPDATE 실행을 취소
SELECT*FROM STUDENTS; -- 다시 '서초구', 17세로 복구
UPDATE STUDENTS SET ADDR  = '성북구', age = 16 WHERE HAKBUN = 2021001;
COMMIT;		-- 이미 COMMIT이 된 명령어는 ROLLBACK 못함.
SELECT*FROM STUDENTS ; -- '성북구', 16세로 반영됨
ROLLBACK;
SELECT *FROM STUDENTS s ;
-------------------------------------------여기까지
-- 트랜잭션 관리명령 : rollback commit

DELETE FROM SCORES s;
ROLLBACK;
SELECT *FROM SCORES;

DELETE FROM SCORES s WHERE HAKBUN = 2019019;
SELECT *FROM SCORES;
-- 이 편집기는 트랜잭션 수동 모드이고 닽은 창에서는 SELECT 결과가 2019019가 없습니다.
-- 다른 편집기는 다른 클라이언트 이므로 이전 상태(최종 커밋한 상태)로 보여집니다.
ROLLBACK;
SELECT *FROM SCORES;
-------------------------------------------여기까지 2번째 예시 
TRUNCATE TABLE SCORES ;		--모든 데이터를 지웁니다. ROLLBACK 여부 확인?
ROLLBACK;					-- 답 : ROLLBACK 불가.
-- 모든데이터를 지울것이 확실하면 다른것들과 섞여서 롤백되지 않게 확실하게 TRUNCATE 해라.
-------------------------------------------
/*
 * ISNERT
 * DELETE
 * COMMIT;		(1) 라인 51, 52
 * UPDATE
 * DELETE;
 * ROLLBACK;	(2) 라인 54, 55
 * INSERT;
 * INSERT;
 * ROLLBACK;	(3)	라인 57, 58
 * INSERT
 * UPDATE;
 * COMMIT;		(4)라인 60, 61
 * 
 * 
 */

SELECT*FROM STUDENTS ;
SELECT*FROM SCORES s  ;