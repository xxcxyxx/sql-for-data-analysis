-- 문제: 조건에 맞는 사원 정보 조회하기
-- 유형: JOIN / SUM / GROUP BY / SUBQUERY
-- 핵심: 2022년 상·하반기 평가 점수를 합산하여 최고 점수 사원 조회
-- 조건: YEAR = 2022
-- 정렬: 최고 평가 점수 사원 조회

SELECT
    SUM(G.SCORE) AS SCORE,
    E.EMP_NO,
    E.EMP_NAME,
    E.POSITION,
    E.EMAIL
FROM HR_EMPLOYEES E
JOIN HR_GRADE G
    ON E.EMP_NO = G.EMP_NO
WHERE G.YEAR = 2022
GROUP BY
    E.EMP_NO,
    E.EMP_NAME,
    E.POSITION,
    E.EMAIL
HAVING SUM(G.SCORE) = (
    SELECT MAX(TOTAL_SCORE)
    FROM (
        SELECT
            EMP_NO,
            SUM(SCORE) AS TOTAL_SCORE
        FROM HR_GRADE
        WHERE YEAR = 2022
        GROUP BY EMP_NO
    ) T
);
