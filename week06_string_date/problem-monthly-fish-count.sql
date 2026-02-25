-- problem-monthly-fish-count
-- 유형: DATE 함수(MONTH) + GROUP BY + COUNT
-- 목표:
-- 월별 잡은 물고기 수 집계
-- 출력 컬럼명: FISH_COUNT, MONTH
-- 월은 숫자 형태(1~12)로 출력
-- 잡은 물고기가 있는 월만 출력
-- 정렬: MONTH 오름차순

SELECT
    COUNT(ID) AS FISH_COUNT,
    MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
ORDER BY MONTH;
