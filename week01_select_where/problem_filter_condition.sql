/*
문제 요약:
- 특정 상태(아픈 상태)에 해당하는 동물의 ID와 이름을 조회하고,
  ID 기준으로 오름차순 정렬하는 문제.

핵심 개념:
- WHERE 조건 필터링
- 문자열 비교
- ORDER BY 오름차순 정렬

접근 방법:
1) INTAKE_CONDITION 컬럼에서 특정 상태만 필터링
2) 필요한 컬럼(ANIMAL_ID, NAME)만 조회
3) ANIMAL_ID 기준 오름차순 정렬
*/

SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID ASC;
