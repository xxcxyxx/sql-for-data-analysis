/*
문제 요약:
- 특정 연도에 가입한 회원 중
  특정 나이 범위에 해당하는 회원 수를 구하는 문제.

핵심 개념:
- YEAR() 날짜 함수
- BETWEEN 범위 조건
- COUNT() 집계 함수
- WHERE 다중 조건

접근 방법:
1) 가입 연도가 2021년인 회원 필터링
2) 나이가 20 이상 29 이하인 회원 필터링
3) 조건을 만족하는 회원 수 COUNT
*/

SELECT
    COUNT(*) AS USERS
FROM USER_INFO
WHERE YEAR(JOINED) = 2021
  AND AGE BETWEEN 20 AND 29;
