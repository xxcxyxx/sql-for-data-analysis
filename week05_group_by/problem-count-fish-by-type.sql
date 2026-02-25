-- problem-count-fish-by-type
-- 유형: JOIN + GROUP BY + COUNT
-- 목표:
-- 물고기 종류별 이름과 잡은 수 조회
-- 정렬: 잡은 수 기준 내림차순

SELECT
    COUNT(f.ID) AS FISH_COUNT,n.FISH_NAME
FROM FISH_INFO f
JOIN FISH_NAME_INFO n
  ON f.FISH_TYPE = n.FISH_TYPE
GROUP BY n.FISH_NAME
ORDER BY FISH_COUNT DESC;
