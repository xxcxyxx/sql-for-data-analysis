-- 문제: 동명 동물 수 찾기
-- 유형: GROUP BY + HAVING + COUNT
-- 핵심 포인트:
-- 1) 이름이 NULL인 경우 제외
-- 2) 이름별 개수 집계 → COUNT(*)
-- 3) 두 번 이상 사용된 이름만 조회 → HAVING COUNT(*) >= 2
-- 4) 이름 기준 오름차순 정렬

SELECT
    NAME,
    COUNT(*) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(*) >= 2
ORDER BY NAME ASC;
