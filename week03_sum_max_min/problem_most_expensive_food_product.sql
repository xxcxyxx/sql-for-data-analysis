-- 문제: 가격이 제일 비싼 식품의 정보 출력하기
-- 유형: MAX + 서브쿼리
-- 핵심 포인트:
-- 1) 가장 비싼 가격 구하기 → MAX(PRICE)
-- 2) 해당 가격과 같은 행 조회
-- 3) 전체 컬럼 출력

SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRODUCT_CD,
    CATEGORY,
    PRICE
FROM FOOD_PRODUCT
WHERE PRICE = (
    SELECT MAX(PRICE)
    FROM FOOD_PRODUCT
);
