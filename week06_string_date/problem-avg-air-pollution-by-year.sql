-- problem-avg-air-pollution-by-year
-- 유형: STRING / DATE + GROUP BY + AVG + ROUND
-- 목표:
-- 수원 지역의 연도별 평균 미세먼지(PM10)와
-- 평균 초미세먼지(PM2.5) 조회

SELECT
    YEAR(YM) AS YEAR,
    ROUND(AVG(PM_VAL1), 2) AS PM10,
    ROUND(AVG(PM_VAL2), 2) AS `PM2.5`
FROM AIR_POLLUTION
WHERE LOCATION2 = '수원'
GROUP BY YEAR(YM)
ORDER BY YEAR;
