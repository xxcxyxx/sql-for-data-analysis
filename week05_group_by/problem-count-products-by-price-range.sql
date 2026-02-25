-- problem-count-products-by-price-range
-- 유형: GROUP BY + FLOOR (가격 구간화)
-- 목표:
-- 만원 단위 가격대별 상품 개수 조회
-- PRICE_GROUP = 해당 구간의 최소 금액
-- 정렬: PRICE_GROUP 오름차순

SELECT
    FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY FLOOR(PRICE / 10000)
ORDER BY PRICE_GROUP;
