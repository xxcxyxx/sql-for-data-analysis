-- 문제: 연간 평가점수에 해당하는 평가 등급 및 성과금 조회하기
-- 유형: JOIN / GROUP BY / CASE WHEN / 집계
-- 핵심: 사원별 연간 평가 점수 합산 후 등급 분류 및 성과금 계산
-- 조건:
-- S : SCORE >= 96
-- A : SCORE >= 90
-- B : SCORE >= 80
-- C : ELSE
-- 정렬: EMP_NO ASC

SELECT
    E.EMP_NO,
    E.EMP_NAME,
    CASE
        WHEN SUM(G.SCORE) >= 192 THEN 'S'
        WHEN SUM(G.SCORE) >= 180 THEN 'A'
        WHEN SUM(G.SCORE) >= 160 THEN 'B'
        ELSE 'C'
    END AS GRADE,
    CASE
        WHEN SUM(G.SCORE) >= 192 THEN E.SAL * 0.2
        WHEN SUM(G.SCORE) >= 180 THEN E.SAL * 0.15
        WHEN SUM(G.SCORE) >= 160 THEN E.SAL * 0.1
        ELSE 0
    END AS BONUS
FROM HR_EMPLOYEES E
JOIN HR_GRADE G
    ON E.EMP_NO = G.EMP_NO
WHERE G.YEAR = 2022
GROUP BY
    E.EMP_NO,
    E.EMP_NAME,
    E.SAL
ORDER BY
    E.EMP_NO ASC;
