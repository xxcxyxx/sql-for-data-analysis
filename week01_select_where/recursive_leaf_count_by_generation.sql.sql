/*
문제 요약:
- 부모-자식 관계로 구성된 트리 구조에서
  각 노드의 세대(level)를 계산한 뒤,
  자식이 없는 노드(leaf)의 개수를 세대별로 집계하는 문제.

핵심 개념:
- WITH RECURSIVE: 트리/계층 탐색
- 부모 세대 + 1 = 자식 세대
- LEFT JOIN + IS NULL: leaf 판별
- GROUP BY: 세대별 집계

로직 흐름:
1) parent_id IS NULL → 1세대
2) 재귀적으로 자식 노드에 generation + 1 부여
3) 자식이 없는 노드만 필터링
4) 세대별 COUNT 후 정렬
*/

WITH RECURSIVE generation AS (
    -- 1. 루트 노드 (1세대)
    SELECT
        id,
        1 AS generation
    FROM ecoli_data
    WHERE parent_id IS NULL

    UNION ALL

    -- 2. 부모-자식 연결하며 세대 누적
    SELECT
        e.id,
        g.generation + 1
    FROM ecoli_data e
    JOIN generation g
      ON e.parent_id = g.id
)

-- 3. 자식이 없는 노드만 추출 후 세대별 집계
SELECT
    COUNT(*) AS `COUNT`,
    g.generation AS GENERATION
FROM generation g
LEFT JOIN ecoli_data c
  ON g.id = c.parent_id
WHERE c.id IS NULL
GROUP BY g.generation
ORDER BY g.generation ASC;
