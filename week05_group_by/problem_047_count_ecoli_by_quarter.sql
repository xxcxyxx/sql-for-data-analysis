-- 문제: 분기별 분화된 대장균의 개체 수 구하기
-- 유형: GROUP BY / 날짜 함수
-- 핵심: DIFFERENTIATION_DATE에서 분기를 추출하여 분기별 개체 수 집계
-- 출력 형식: '1Q', '2Q', '3Q', '4Q'
-- 정렬: QUARTER ASC

SELECT
    CONCAT(QUARTER(DIFFERENTIATION_DATE),'Q') AS QUARTER,
    COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA
GROUP BY QUARTER
ORDER BY QUARTER;
