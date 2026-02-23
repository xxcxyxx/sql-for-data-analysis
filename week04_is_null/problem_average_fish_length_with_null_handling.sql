-- 문제: 잡은 물고기의 평균 길이 구하기
-- 유형: IS NULL 처리 + AVG + ROUND
-- 핵심 포인트:
-- 1) LENGTH가 NULL이면 10으로 처리
-- 2) 평균 계산
-- 3) 소수점 3째자리에서 반올림 → ROUND(값, 2)
-- 컬럼명: AVERAGE_LENGTH

SELECT
    ROUND(AVG(IFNULL(LENGTH, 10)), 2) AS AVERAGE_LENGTH
FROM FISH_INFO;
