-- problem-most-favorited-restaurant-by-category
-- 유형: GROUP BY + 서브쿼리 (그룹별 최대값 행 조회)
-- 목표:
-- 음식 종류별 즐겨찾기 수가 가장 많은 식당 정보 조회
-- 정렬: FOOD_TYPE 내림차순

SELECT
    r.FOOD_TYPE,
    r.REST_ID,
    r.REST_NAME,
    r.FAVORITES
FROM REST_INFO r
WHERE r.FAVORITES = (
    SELECT MAX(FAVORITES)
    FROM REST_INFO
    WHERE FOOD_TYPE = r.FOOD_TYPE
)
ORDER BY r.FOOD_TYPE DESC;
