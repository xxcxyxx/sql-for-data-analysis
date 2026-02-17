-- 문제: 오랜 기간 보호한 동물(1)
-- 유형: JOIN (LEFT JOIN) + NULL 필터링 + 정렬/제한
-- 핵심 포인트:
-- 1) ANIMAL_INS를 기준으로 ANIMAL_OUTS를 LEFT JOIN
-- 2) 입양 기록이 없는 동물만(o.ANIMAL_ID IS NULL) 필터링
-- 3) 보호 시작일(i.DATETIME) 오래된 순으로 정렬 후 3마리 조회
-- 출력 컬럼: NAME, DATETIME

SELECT
    i.NAME,
    i.DATETIME
FROM ANIMAL_INS i
LEFT JOIN ANIMAL_OUTS o
       ON i.ANIMAL_ID = o.ANIMAL_ID
WHERE o.ANIMAL_ID IS NULL
ORDER BY i.DATETIME ASC
LIMIT 3;
