/*
문제 요약:
- 특정 테이블에서 이름과 날짜 컬럼을 조회하되,
  ID 기준으로 내림차순 정렬하여 출력하는 문제.

핵심 개념:
- SELECT로 특정 컬럼 조회
- ORDER BY
- DESC (내림차순 정렬)

접근 방법:
1) 필요한 컬럼(NAME, DATETIME)만 선택
2) ANIMAL_ID 기준으로 내림차순 정렬
*/

SELECT
    NAME,
    DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;
