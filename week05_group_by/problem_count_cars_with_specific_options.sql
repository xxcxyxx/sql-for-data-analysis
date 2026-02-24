-- 문제: 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 유형: LIKE + OR + GROUP BY
-- 핵심 포인트:
-- 1) OPTIONS 컬럼에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상 포함
-- 2) 자동차 종류(CAR_TYPE)별로 그룹화
-- 3) 자동차 수 집계 → COUNT(*)
-- 4) CAR_TYPE 기준 오름차순 정렬
-- 출력 컬럼명: CARS

SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%'
   OR OPTIONS LIKE '%열선시트%'
   OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC;
