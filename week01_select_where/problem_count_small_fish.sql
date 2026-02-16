/*
요약:
- LENGTH가 NULL인 행 = 10cm 이하 물고기
- NULL 조건으로 개수 집계

핵심:
- IS NULL 조건
- COUNT 집계
*/

SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE LENGTH IS NULL;
