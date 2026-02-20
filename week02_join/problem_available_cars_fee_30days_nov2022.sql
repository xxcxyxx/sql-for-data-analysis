-- 문제: 특정 기간동안 대여 가능한 자동차들의 대여비용 구하기
-- 유형: JOIN + 기간 겹침(availability) 판단 + 할인율 적용 + 정렬/필터
-- 핵심 포인트:
-- 1) 대상: '세단', 'SUV'
-- 2) 2022-11-01 ~ 2022-11-30 기간과 대여 이력이 겹치면 제외
--    - 겹침 조건: START_DATE <= '2022-11-30' AND END_DATE >= '2022-11-01'
-- 3) 30일 대여 금액 계산 시 '30일 이상' 할인율 적용
-- 4) FEE는 정수 부분만 출력 (TRUNCATE(..., 0))
-- 5) FEE: 500,000 이상 2,000,000 미만
-- 6) 정렬: FEE DESC, CAR_TYPE ASC, CAR_ID DESC

SELECT
    c.CAR_ID,
    c.CAR_TYPE,
    TRUNCATE(c.DAILY_FEE * 30 * (100 - p.DISCOUNT_RATE) / 100, 0) AS FEE
FROM CAR_RENTAL_COMPANY_CAR c
JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
  ON c.CAR_TYPE = p.CAR_TYPE
 AND p.DURATION_TYPE = '30일 이상'
WHERE c.CAR_TYPE IN ('세단', 'SUV')
  AND NOT EXISTS (
      SELECT 1
      FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY h
      WHERE h.CAR_ID = c.CAR_ID
        AND h.START_DATE <= '2022-11-30'
        AND h.END_DATE   >= '2022-11-01'
  )
  AND TRUNCATE(c.DAILY_FEE * 30 * (100 - p.DISCOUNT_RATE) / 100, 0) >= 500000
  AND TRUNCATE(c.DAILY_FEE * 30 * (100 - p.DISCOUNT_RATE) / 100, 0) < 2000000
ORDER BY
    FEE DESC,
    c.CAR_TYPE ASC,
    c.CAR_ID DESC;
