-- 문제: 있었는데요 없었습니다
-- 유형: JOIN (INNER JOIN) + 날짜 비교
-- 핵심:
-- - 같은 ANIMAL_ID 기준으로 입소일(ANIMAL_INS.DATETIME)과 입양일(ANIMAL_OUTS.DATETIME)을 비교
-- - 입양일이 입소일보다 빠른(잘못 입력된) 데이터만 필터링
-- 출력: ANIMAL_ID, NAME
-- 정렬: 보호 시작일(입소일) 빠른 순

SELECT
    i.ANIMAL_ID,
    i.NAME
FROM ANIMAL_INS i
JOIN ANIMAL_OUTS o
  ON i.ANIMAL_ID = o.ANIMAL_ID
WHERE o.DATETIME < i.DATETIME
ORDER BY i.DATETIME ASC;
