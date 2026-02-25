-- problem-rental-availability-on-specific-date
-- 유형: CASE + DATE 범위 조건 + GROUP BY
-- 목표:
-- 2022-10-16 기준으로 차량 대여중 / 대여 가능 구분
-- 반납일이 10-16이어도 대여중으로 처리
-- 정렬: CAR_ID 내림차순

SELECT
    CAR_ID,
    CASE
        WHEN COUNT(
            CASE
                WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE
                THEN 1
            END
        ) > 0
        THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;
