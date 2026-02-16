-- 📌 업그레이드 된 아이템 구하기
-- 조건: 희귀도(RARITY)가 'RARE'인 아이템을 '부모'로 갖는 모든 '다음 업그레이드 아이템(자식)' 조회
-- 출력: ITEM_ID, ITEM_NAME, RARITY
-- 정렬: ITEM_ID DESC
--
-- 💡 핵심 개념
-- - ITEM_TREE에서 (PARENT_ITEM_ID -> ITEM_ID) 관계로 업그레이드 방향 파악
-- - 부모 아이템(ITEM_INFO)의 RARITY = 'RARE' 조건 필터링
-- - 자식 아이템(ITEM_INFO) 정보 출력

SELECT
    child.ITEM_ID,
    child.ITEM_NAME,
    child.RARITY
FROM ITEM_TREE t
JOIN ITEM_INFO parent
  ON t.PARENT_ITEM_ID = parent.ITEM_ID
JOIN ITEM_INFO child
  ON t.ITEM_ID = child.ITEM_ID
WHERE parent.RARITY = 'RARE'
ORDER BY child.ITEM_ID DESC;
