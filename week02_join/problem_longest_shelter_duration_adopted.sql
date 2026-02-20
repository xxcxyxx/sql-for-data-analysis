-- 문제: 오랜 기간 보호한 동물(2)
-- 유형: JOIN + 날짜 차이 계산(DATEDIFF) + 정렬 + LIMIT
-- 핵심 포인트:
-- 1) 입양을 간 동물만 대상 → ANIMAL_OUTS와 INNER JOIN
-- 2) 보호 기간 = 입양일(o.DATETIME) - 입소일(i.DATETIME)
-- 3) 보호 기간이 긴 순으로 정렬 후 상위 2마리 조회
-- 출력 컬럼: ANIMAL_ID, NAME

SELECT
    i.ANIMAL_ID,
    i.NAME
FROM ANIMAL_INS i
JOIN ANIMAL_OUTS o
  ON i.ANIMAL_ID = o.ANIMAL_ID
ORDER BY DATEDIFF(o.DATETIME, i.DATETIME) DESC
LIMIT 2;
