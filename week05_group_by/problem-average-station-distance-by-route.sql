-- problem-average-station-distance-by-route
-- 유형: GROUP BY + SUM/AVG + ROUND + 문자열(km) 포맷
-- 목표:
-- 노선(ROUTE)별 총 거리(TOTAL_DISTANCE), 평균 역간 거리(AVERAGE_DISTANCE) 계산
-- - TOTAL_DISTANCE: 소수 둘째 자리 반올림 후 'km' 붙이기
-- - AVERAGE_DISTANCE: 소수 셋째 자리 반올림 후 'km' 붙이기
-- 정렬: TOTAL_DISTANCE(숫자 기준) 내림차순

SELECT
    ROUTE,
    CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE,
    CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
GROUP BY ROUTE
ORDER BY SUM(D_BETWEEN_DIST) DESC;
