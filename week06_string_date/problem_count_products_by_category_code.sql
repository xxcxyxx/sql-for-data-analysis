-- 문제: 카테고리 별 상품 개수 구하기
-- 유형: 문자열 추출 + GROUP BY
-- 핵심 포인트:
-- 1) PRODUCT_CODE 앞 2자리 추출 → LEFT(PRODUCT_CODE, 2)
-- 2) 카테고리 코드별 그룹화 → GROUP BY
-- 3) 상품 개수 집계 → COUNT(*)
-- 4) 카테고리 코드 기준 오름차순 정렬

SELECT
    LEFT(PRODUCT_CODE, 2) AS CATEGORY,
    COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY LEFT(PRODUCT_CODE, 2)
ORDER BY CATEGORY ASC;
