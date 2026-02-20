-- 문제: 중성화 여부 파악하기
-- 유형: 문자열 검색 (LIKE) + CASE WHEN
-- 핵심 포인트:
-- - SEX_UPON_INTAKE에 'Neutered' 또는 'Spayed' 포함 → 중성화 O
-- - 그렇지 않으면 X
-- - ANIMAL_ID 기준 오름차순 정렬
-- 출력 컬럼: ANIMAL_ID, NAME, 중성화 여부

SELECT
    ANIMAL_ID,
    NAME,
    CASE
        WHEN SEX_UPON_INTAKE LIKE '%Neutered%'
          OR SEX_UPON_INTAKE LIKE '%Spayed%'
        THEN 'O'
        ELSE 'X'
    END AS 중성화
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;
