-- 문제: 자동차 대여 기록에서 장기/단기 대여 구분하기
-- 유형: DATE 범위 필터 + DATEDIFF + CASE WHEN
-- 핵심 포인트:
-- 1) 2022년 9월에 시작한 대여 기록만 조회
--    → START_DATE BETWEEN '2022-09-01' AND '2022-09-30'
-- 2) 대여 기간 계산
--    → DATEDIFF(END_DATE, START_DATE) + 1 (양 끝 날짜 포함)
-- 3) 30일 이상이면 '장기 대여', 아니면 '단기 대여'
-- 4) HISTORY_ID 기준 내림차순 정렬
-- ※ DATE_FORMAT으로 날짜 형식 통일

SELECT
    HISTORY_ID,
    CAR_ID,
    DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE,
    DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE,
    CASE
        WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30
            THEN '장기 대여'
        ELSE '단기 대여'
    END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN '2022-09-01' AND '2022-09-30'
ORDER BY HISTORY_ID DESC;
