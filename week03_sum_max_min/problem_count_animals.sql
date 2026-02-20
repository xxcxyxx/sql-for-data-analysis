-- 문제: 동물 수 구하기
-- 유형: COUNT (집계 함수)
-- 핵심 포인트:
-- - 테이블 전체 행 개수 = COUNT(*)
-- 출력 컬럼: count (컬럼명은 상관없음)

SELECT
    COUNT(*) AS count
FROM ANIMAL_INS;
