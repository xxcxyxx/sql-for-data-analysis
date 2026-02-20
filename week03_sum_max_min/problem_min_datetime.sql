-- 문제: 최솟값 구하기
-- 유형: MIN (집계 함수)
-- 핵심 포인트:
-- - 가장 먼저 들어온 시간 = DATETIME의 최솟값(MIN)
-- 출력 컬럼: 시간(컬럼명은 상관없음)

SELECT
    MIN(DATETIME) AS TIME
FROM ANIMAL_INS;
