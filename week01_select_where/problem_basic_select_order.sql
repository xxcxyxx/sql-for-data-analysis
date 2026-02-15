/*
문제 요약:
- 특정 테이블에서 모든 동물의 ID와 이름을 조회하고,
  ID 기준으로 오름차순 정렬하는 문제.

핵심 개념:
- SELECT 특정 컬럼 조회
- ORDER BY 기본 오름차순 정렬

접근 방법:
1) ANIMAL_ID, NAME 컬럼 선택
2) ANIMAL_ID 기준 오름차순 정렬
*/

SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;
