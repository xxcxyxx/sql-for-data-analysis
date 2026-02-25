-- problem-average-salary-by-department
-- 유형: JOIN + GROUP BY + AVG + ROUND
-- 목표:
-- 부서별 평균 연봉 조회
-- 출력: DEPT_ID, DEPT_NAME_EN, AVG_SAL
-- 평균연봉: 소수점 첫째 자리에서 반올림
-- 정렬: AVG_SAL 내림차순

SELECT
    d.DEPT_ID,
    d.DEPT_NAME_EN,
    ROUND(AVG(e.SAL), 0) AS AVG_SAL
FROM HR_DEPARTMENT d
JOIN HR_EMPLOYEES e
  ON d.DEPT_ID = e.DEPT_ID
GROUP BY d.DEPT_ID, d.DEPT_NAME_EN
ORDER BY AVG_SAL DESC;
