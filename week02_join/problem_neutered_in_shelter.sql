-- 문제: 보호소에서 중성화한 동물
-- 유형: JOIN (INNER JOIN) + 문자열 조건 필터링 + 정렬
-- 핵심 포인트:
-- 1) ANIMAL_INS(입소)와 ANIMAL_OUTS(퇴소)를 ANIMAL_ID로 조인
-- 2) 입소 시 미중성화: SEX_UPON_INTAKE에 'Intact' 포함
-- 3) 퇴소 시 중성화: SEX_UPON_OUTCOME에 'Spayed' 또는 'Neutered' 포함
-- 4) ANIMAL_ID 오름차순 정렬
-- 출력 컬럼: ANIMAL_ID, ANIMAL_TYPE, NAME

SELECT
    i.ANIMAL_ID,
    i.ANIMAL_TYPE,
    i.NAME
FROM ANIMAL_INS i
JOIN ANIMAL_OUTS o
  ON i.ANIMAL_ID = o.ANIMAL_ID
WHERE i.SEX_UPON_INTAKE LIKE '%Intact%'
  AND (o.SEX_UPON_OUTCOME LIKE '%Spayed%' OR o.SEX_UPON_OUTCOME LIKE '%Neutered%')
ORDER BY i.ANIMAL_ID ASC;
