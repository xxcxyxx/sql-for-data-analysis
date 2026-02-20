-- 문제: 이름이 없는 동물의 아이디
-- 유형: IS NULL + 정렬
-- 핵심 포인트:
-- - 이름이 없는 경우 → NAME IS NULL
-- - ANIMAL_ID 오름차순 정렬
-- 출력 컬럼: ANIMAL_ID

SELECT
    ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID ASC;
