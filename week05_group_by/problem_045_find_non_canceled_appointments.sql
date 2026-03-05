-- 문제: 취소되지 않은 진료 예약 조회하기
-- 유형: JOIN / 날짜 조건 / 필터링
-- 핵심: 환자, 의사, 예약 테이블을 JOIN하여 특정 날짜의 취소되지 않은 예약 조회
-- 조건:
-- 진료과 = CS
-- 예약 취소 여부 = 'N'
-- 날짜 = 2022-04-13
-- 정렬: APNT_YMD ASC

SELECT
    A.APNT_NO,
    P.PT_NAME,
    P.PT_NO,
    A.MCDP_CD,
    D.DR_NAME,
    A.APNT_YMD
FROM APPOINTMENT A
JOIN PATIENT P
    ON A.PT_NO = P.PT_NO
JOIN DOCTOR D
    ON A.MDDR_ID = D.DR_ID
WHERE
    A.MCDP_CD = 'CS'
    AND A.APNT_CNCL_YN = 'N'
    AND DATE(A.APNT_YMD) = '2022-04-13'
ORDER BY
    A.APNT_YMD ASC;
