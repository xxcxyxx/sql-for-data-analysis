-- 문제: 부모의 형질을 모두 가지는 대장균 찾기
-- 유형: SELF JOIN / BITMASK
-- 핵심: 부모의 형질이 자식의 형질에 모두 포함되는지 확인
-- 정렬: ID 오름차순

----------------------------------

SELECT
    C.ID,
    C.GENOTYPE,
    P.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA C
JOIN ECOLI_DATA P
ON C.PARENT_ID = P.ID
WHERE
    (C.GENOTYPE & P.GENOTYPE) = P.GENOTYPE
ORDER BY C.ID;

----------------------------------

-
