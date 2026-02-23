-- 문제: 조건에 맞는 아이템들의 가격의 총합 구하기
-- 유형: SUM + WHERE 조건
-- 핵심 포인트:
-- 1) 희귀도 RARITY가 'LEGEND'인 아이템만 필터링
-- 2) 해당 아이템들의 PRICE 총합 계산 → SUM
-- 3) 컬럼명은 TOTAL_PRICE로 지정

SELECT
    SUM(PRICE) AS TOTAL_PRICE
FROM ITEM_INFO
WHERE RARITY = 'LEGEND';
