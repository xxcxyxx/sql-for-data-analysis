-- 문제: 없어진 기록 찾기
-- 유형: JOIN (LEFT JOIN) + NULL 필터링
-- 핵심:
-- - 입양(ANIMAL_OUTS) 기록은 있는데, 보호소 입소(ANIMAL_INS) 기록이 없는 동물을 찾는다.
-- - ANIMAL_OUTS를 기준으로 LEFT JOIN 후, 매칭되지 않은(INS가 NULL) 행만 필터링한다.
-- 출력: ANIMAL_ID, NAME
-- 정렬: ANIMAL_ID 오름차순

SELECT
    o.ANIMAL_ID, 
    o.NAME
FROM ANIMAL_OUTS o
LEFT JOIN ANIMAL_INS i
  ON o.ANIMAL_ID = i.ANIMAL_ID
WHERE i.ANIMAL_ID IS NULL
ORDER BY o.ANIMAL_ID ASC;
