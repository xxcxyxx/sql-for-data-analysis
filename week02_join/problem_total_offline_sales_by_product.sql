-- 문제: 상품 별 오프라인 매출 구하기
-- 유형: JOIN + GROUP BY + 집계 함수(SUM) + 정렬
-- 핵심 포인트:
-- 1) PRODUCT와 OFFLINE_SALE을 PRODUCT_ID로 조인
-- 2) 매출액 = PRICE * SALES_AMOUNT
-- 3) 상품코드(PRODUCT_CODE) 기준으로 매출 합계 계산
-- 4) 매출액 내림차순, 동일 시 상품코드 오름차순 정렬
-- 출력 컬럼: PRODUCT_CODE, SALES

SELECT
    p.PRODUCT_CODE,
    SUM(p.PRICE * o.SALES_AMOUNT) AS SALES
FROM PRODUCT p
JOIN OFFLINE_SALE o
  ON p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.PRODUCT_CODE
ORDER BY SALES DESC, p.PRODUCT_CODE ASC;
