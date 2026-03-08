-- 문제: 특정 세대의 대장균 찾기
-- 유형: SELF JOIN
-- 핵심: 부모 → 조부모 관계를 따라가며 3세대 찾기
-- 정렬: ID 오름차순

----------------------------------

SELECT
    C.ID
FROM ECOLI_DATA C
JOIN ECOLI_DATA P
    ON C.PARENT_ID = P.ID
JOIN ECOLI_DATA G
    ON P.PARENT_ID = G.ID
WHERE
    G.PARENT_ID IS NULL
ORDER BY C.ID;
