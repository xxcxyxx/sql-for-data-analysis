-- 개념 정리: WITH RECURSIVE (시간 0~23 생성 예시)
-- 유형: 재귀 CTE (Common Table Expression)
-- 목적: 0~23까지의 시간 범위를 생성
-- 활용: 데이터가 없는 시간대도 출력해야 하는 GROUP BY 문제에서 사용

-- 핵심 구조
-- 1) Anchor (시작값)
-- 2) Recursive (자기 자신 참조)
-- 3) 종료 조건 반드시 필요

WITH RECURSIVE hours AS (
    SELECT 0 AS hour
    UNION ALL
    SELECT hour + 1
    FROM hours
    WHERE hour < 23
)
SELECT
    h.hour AS HOUR,
    COUNT(a.ANIMAL_ID) AS COUNT
FROM hours h
LEFT JOIN ANIMAL_OUTS a
    ON HOUR(a.DATETIME) = h.hour
GROUP BY h.hour
ORDER BY h.hour;
