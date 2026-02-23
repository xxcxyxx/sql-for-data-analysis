-- 문제: 진료과별 총 예약 횟수 출력하기
-- 유형: GROUP BY + 날짜 필터 + COUNT
-- 핵심 포인트:
-- 1) 2022년 5월 예약 데이터만 필터링
-- 2) 진료과코드(MCDP_CD)별 예약 건수 집계 → COUNT(*)
-- 3) 컬럼명 지정: '진료과코드', '5월예약건수'
-- 4) 정렬: 예약건수 ASC, 진료과코드 ASC

SELECT
    MCDP_CD AS 진료과코드,
    COUNT(*) AS 5월예약건수
FROM APPOINTMENT
WHERE APNT_YMD >= '2022-05-01'
  AND APNT_YMD <  '2022-06-01'
GROUP BY MCDP_CD
ORDER BY
    5월예약건수 ASC,
    진료과코드 ASC;
