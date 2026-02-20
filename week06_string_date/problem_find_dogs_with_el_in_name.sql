-- 문제: 이름에 el이 들어가는 동물 찾기
-- 유형: 문자열 검색 (LIKE) + 대소문자 무시 + 조건 필터링
-- 핵심 포인트:
-- - 이름에 'el' 포함 → LIKE '%el%'
-- - 대소문자 구분 없음 (MySQL은 기본적으로 대소문자 구분 안 함)
-- - 개만 조회 → ANIMAL_TYPE = 'Dog'
-- - 이름 기준 오름차순 정렬
-- 출력 컬럼: ANIMAL_ID, NAME 

SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog'
  AND NAME LIKE '%el%'
ORDER BY NAME ASC;
