/*
문제 요약:
- 특정 상태(Aged)가 아닌 동물의 ID와 이름을 조회하고,
  ID 기준으로 오름차순 정렬하는 문제.

핵심 개념:
- WHERE 조건에서 값 제외하기
- != 또는 <> 연산자
- ORDER BY 오름차순 정렬

접근 방법:
1) INTAKE_CONDITION이 'Aged'가 아닌 데이터 필터링
2) 필요한 컬럼(ANIMAL_ID, NAME)만 선택
3) ANIMAL_ID 기준 오름차순 정렬
*/

SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID ASC;
