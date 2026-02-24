-- 문제: 입양 시각 구하기(1)
-- 유형: GROUP BY + HOUR()
-- 핵심 포인트:
-- 1) DATETIME에서 시간 추출 → HOUR(DATETIME)
-- 2) 9시 이상 19시 이하만 조회
-- 3) 시간대별 입양 건수 집계 → COUNT(*)
-- 4) 시간 기준 오름차순 정렬

SELECT
    HOUR(DATETIME) AS HOUR,
    COUNT(*) AS COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 19
GROUP BY HOUR(DATETIME)
ORDER BY HOUR ASC;
