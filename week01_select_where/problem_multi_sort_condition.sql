/*
문제 요약:
- 모든 동물의 ID, 이름, 보호 시작일을 조회하되
  1) 이름 기준 오름차순 정렬
  2) 이름이 같은 경우 보호 시작일 기준 내림차순 정렬하는 문제

핵심 개념:
- ORDER BY 다중 정렬
- ASC / DESC 혼합 사용

접근 방법:
1) 필요한 컬럼(ANIMAL_ID, NAME, DATETIME) 선택
2) 1차 정렬: NAME ASC
3) 2차 정렬: DATETIME DESC
*/

SELECT
    ANIMAL_ID,
    NAME,
    DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;
