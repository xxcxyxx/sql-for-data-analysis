-- 문제: 상품을 구매한 회원 비율 구하기
-- 유형: JOIN + DISTINCT 집계 + 비율 계산 + 월별 그룹화
-- 핵심 포인트:
-- 1) 2021년에 가입한 회원만 대상으로 제한 (USER_INFO.JOINED)
-- 2) ONLINE_SALE에서 YEAR/MONTH별 구매 회원 수는 COUNT(DISTINCT USER_ID)
-- 3) 구매 비율 = (해당 월 구매 회원 수) / (2021 가입 전체 회원 수)
-- 4) 비율은 소수 첫째 자리까지 반올림 (ROUND(..., 1))
-- 5) YEAR, MONTH 오름차순 정렬

SELECT
    YEAR(o.SALES_DATE) AS YEAR,
    MONTH(o.SALES_DATE) AS MONTH,
    COUNT(DISTINCT o.USER_ID) AS PURCHASED_USERS,
    ROUND(
        COUNT(DISTINCT o.USER_ID) / (
            SELECT COUNT(*)
            FROM USER_INFO
            WHERE YEAR(JOINED) = 2021
        ),
        1
    ) AS PURCHASED_RATIO
FROM ONLINE_SALE o
JOIN USER_INFO u
  ON o.USER_ID = u.USER_ID
WHERE YEAR(u.JOINED) = 2021
GROUP BY
    YEAR(o.SALES_DATE),
    MONTH(o.SALES_DATE)
ORDER BY
    YEAR ASC,
    MONTH ASC;
