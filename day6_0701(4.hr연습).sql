--HR 스키마를 이용하여 조인과 group by 를 포함해서 SELECT 로 검생하는 문제를 10개 만들기
-- group by 결과로도 조인을 할 수 있습니다.	부서인원이 가장많은 부서는? 5시 30분까지

SELECT department_id
FROM EMPLOYEES e,DEPARTMENTS d 
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID;




