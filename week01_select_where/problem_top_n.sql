/*
문제 요약:
- 가장 먼저 들어온 동물의 이름을 조회하는 문제.
- 날짜 기준으로 가장 작은 값을 가진 1개의 행을 추출.

핵심 개념:
- ORDER BY
- LIMIT
- 날짜 오름차순 정렬

접근 방법:
1) DATETIME 기준 오름차순 정렬 (가장 오래된 날짜가 먼저)
2) LIMIT 1로 상위 1개만 조회
*/

SELECT
    NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;
