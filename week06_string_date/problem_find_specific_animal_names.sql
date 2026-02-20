-- 문제: 루시와 엘라 찾기
-- 유형: 문자열 조건 (IN) + 정렬
-- 핵심 포인트:
-- - 특정 여러 값 검색 → IN 사용
-- - NAME이 주어진 이름 목록에 포함되는 경우 조회
-- - ANIMAL_ID 기준 오름차순 정렬
-- 출력 컬럼: ANIMAL_ID, NAME, SEX_UPON_INTAKE

SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID ASC;
