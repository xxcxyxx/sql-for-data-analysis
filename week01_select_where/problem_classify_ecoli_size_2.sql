-- 문제: 대장균의 크기에 따라 분류하기 2
-- 유형: WINDOW FUNCTION (NTILE)
-- 핵심: SIZE_OF_COLONY 내림차순 기준 4등분하여 분류
-- 정렬: ID 오름차순

----------------------------------

SELECT
    ID,
    CASE NTILE(4) OVER (ORDER BY SIZE_OF_COLONY DESC)
        WHEN 1 THEN 'CRITICAL'
        WHEN 2 THEN 'HIGH'
        WHEN 3 THEN 'MEDIUM'
        WHEN 4 THEN 'LOW'
    END AS COLONY_NAME
FROM ECOLI_DATA
ORDER BY ID;

----------------------------------

