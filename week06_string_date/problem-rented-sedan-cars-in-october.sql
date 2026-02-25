-- problem-rented-sedan-cars-in-october
-- 유형: JOIN + DISTINCT + DATE(MONTH)
-- 목표:
-- '세단' 차량 중 10월에 대여 시작(START_DATE) 기록이 있는 자동차 ID를 중복 없이 출력
-- 정렬: CAR_ID 내림차순

SELECT DISTINCT
    c.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR c
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY h
  ON c.CAR_ID = h.CAR_ID
WHERE c.CAR_TYPE = '세단'
  AND MONTH(h.START_DATE) = 10
ORDER BY c.CAR_ID DESC;
