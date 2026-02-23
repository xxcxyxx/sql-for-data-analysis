-- 문제: 최댓값 구하기
-- 유형: MAX (집계 함수)
-- 핵심 포인트:
-- - 가장 최근에 들어온 시간 = DATETIME의 최댓값(MAX)
-- 출력 컬럼: 시간(컬럼명은 상관없음)

SELECT
    MAX(DATETIME) AS TIME
FROM ANIMAL_INS;
