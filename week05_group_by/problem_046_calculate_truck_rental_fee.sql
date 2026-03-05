-- 문제: 자동차 대여 기록 별 대여 금액 구하기
-- 유형: JOIN / CASE WHEN / 할인 계산
-- 핵심: 대여 기간에 따라 할인 정책을 적용하여 총 대여 금액 계산
-- 조건: 자동차 종류 = '트럭'
-- 정렬: FEE DESC, HISTORY_ID DESC

SELECT
    H.HISTORY_ID,
    ROUND(
        C.DAILY_FEE *
        (DATEDIFF(H.END_DATE, H.START_DATE) + 1) *
        (1 - IFNULL(P.DISCOUNT_RATE, 0) / 100)
    ) AS FEE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY H
JOIN CAR_RENTAL_COMPANY_CAR C
    ON H.CAR_ID = C.CAR_ID
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P
    ON P.CAR_TYPE = '트럭'
    AND P.DURATION_TYPE =
        CASE
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 90 THEN '90일 이상'
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 30 THEN '30일 이상'
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 7 THEN '7일 이상'
            ELSE NULL
        END
WHERE C.CAR_TYPE = '트럭'
ORDER BY
    FEE DESC,
    H.HISTORY_ID DESC;
