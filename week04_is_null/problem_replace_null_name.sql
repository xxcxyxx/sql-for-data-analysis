-- 문제: NULL 처리하기
-- 유형: IFNULL (NULL 값 치환) + 정렬
-- 핵심 포인트:
-- - 이름이 NULL인 경우 → "No name"으로 치환
-- - IFNULL(컬럼, 대체값) 사용
-- - ANIMAL_ID 오름차순 정렬
-- 출력 컬럼: ANIMAL_TYPE, NAME, SEX_UPON_INTAKE

SELECT
    ANIMAL_TYPE,
    IFNULL(NAME, 'No name') AS NAME,
    SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;
