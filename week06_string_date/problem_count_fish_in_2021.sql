-- 문제: 한 해에 잡은 물고기 수 구하기
-- 유형: DATE 함수 (YEAR) + COUNT
-- 핵심 포인트:
-- 1) TIME 컬럼에서 연도 추출 → YEAR(TIME)
-- 2) 2021년 데이터만 필터링
-- 3) 개수 집계 → COUNT(*)
-- 컬럼명: FISH_COUNT

SELECT
    COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE YEAR(TIME) = 2021;
