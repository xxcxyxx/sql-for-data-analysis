-- problem-classify-food-order-status
-- 유형: CASE + DATE 비교 + NULL 처리 + DATE_FORMAT
-- 기준일: 2022-05-01
-- 목표:
-- 주문별 출고 상태 분류
-- 1) OUT_DATE ≤ 2022-05-01 → 출고완료
-- 2) OUT_DATE > 2022-05-01 → 출고대기
-- 3) OUT_DATE IS NULL → 출고미정
-- 정렬: ORDER_ID 오름차순

SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
    CASE
        WHEN OUT_DATE IS NULL THEN '출고미정'
        WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
        ELSE '출고대기'
    END AS 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID;
