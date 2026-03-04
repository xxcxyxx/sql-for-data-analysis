-- 문제: 식품분류별 가장 비싼 식품 조회
-- 유형: GROUP BY / MAX / SUBQUERY
-- 핵심: 카테고리별 최대 가격 식품 조회
-- 조건: CATEGORY ('과자','국','김치','식용유')
-- 정렬: PRICE 내림차순

/*
[Approach]

1. FOOD_PRODUCT 테이블에서 특정 카테고리만 먼저 필터링한다.
   ('과자', '국', '김치', '식용유')

2. 각 카테고리별로 가장 높은 가격을 찾기 위해
   GROUP BY CATEGORY 와 MAX(PRICE)를 사용한다.

3. 서브쿼리에서 구한 (CATEGORY, MAX PRICE)와
   동일한 값을 가진 행을 원본 테이블에서 조회한다.

4. 최종 결과는 PRICE 기준으로 내림차순 정렬한다.
*/

SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY, PRICE) IN (
    SELECT
        CATEGORY,
        MAX(PRICE)
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
    GROUP BY CATEGORY
)
ORDER BY PRICE DESC;
