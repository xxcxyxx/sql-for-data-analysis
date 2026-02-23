-- 문제: DATETIME에서 DATE로 형 변환
-- 유형: DATE_FORMAT (또는 DATE 함수)
-- 핵심 포인트:
-- 1) DATETIME 컬럼에서 날짜 부분만 추출
-- 2) 시:분:초 제거
-- 3) ANIMAL_ID 기준 오름차순 정렬

SELECT
    ANIMAL_ID,
    NAME,
    DATE_FORMAT(DATETIME, '%Y-%m-%d') AS 날짜
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;
