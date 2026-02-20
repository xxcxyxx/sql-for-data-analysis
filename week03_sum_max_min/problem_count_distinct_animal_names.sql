-- 문제: 중복 제거하기
-- 유형: COUNT + DISTINCT
-- 핵심 포인트:
-- - 이름 중복 제거 → DISTINCT
-- - NULL은 자동으로 COUNT에서 제외됨
-- 출력 컬럼: count (컬럼명은 상관없음)

SELECT
    COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS;
