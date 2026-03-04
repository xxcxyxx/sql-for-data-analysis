-- 문제: 우유와 요거트가 담긴 장바구니
-- 유형: GROUP BY / HAVING / 조건 집계
-- 핵심: 같은 CART_ID에 Milk와 Yogurt가 모두 존재하는 장바구니 조회
-- 조건: NAME = 'Milk' AND NAME = 'Yogurt'
-- 정렬: CART_ID ASC

SELECT
    CART_ID
FROM CART_PRODUCTS
WHERE NAME IN ('Milk','Yogurt')
GROUP BY CART_ID
HAVING COUNT(DISTINCT NAME) = 2
ORDER BY CART_ID ASC;
