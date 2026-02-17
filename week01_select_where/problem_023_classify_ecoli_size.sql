-- 문제: 대장균의 크기에 따라 분류하기 1
-- 유형: SELECT / CASE WHEN
-- 핵심: 조건에 따라 값 분류
-- 정렬: ID 오름차순

SELECT
    ID,
    CASE
        WHEN SIZE_OF_COLONY <= 100 THEN 'LOW'
        WHEN SIZE_OF_COLONY <= 1000 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS SIZE
FROM ECOLI_DATA
ORDER BY ID ASC;
