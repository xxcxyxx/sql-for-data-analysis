-- 문제: 대장균들의 자식의 수 구하기
-- 유형: SELF JOIN / GROUP BY
-- 핵심: PARENT_ID 기준으로 자식 개체 수 집계
-- 조건: 자식이 없는 경우 0 출력
-- 정렬: ID ASC



SELECT
    A.ID,
    COUNT(B.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA A
LEFT JOIN ECOLI_DATA B
ON A.ID = B.PARENT_ID
GROUP BY A.ID
ORDER BY A.ID;

