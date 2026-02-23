-- 문제: 잡은 물고기 중 가장 큰 물고기의 길이 구하기
-- 유형: MAX + 문자열 연결 (CONCAT)
-- 핵심 포인트:
-- 1) LENGTH는 10cm 이하일 경우 NULL → MAX는 자동으로 NULL 제외
-- 2) 가장 큰 길이 = MAX(LENGTH)
-- 3) 'cm' 단위 붙이기 → CONCAT
-- 4) 컬럼명은 MAX_LENGTH로 지정

SELECT
    CONCAT(MAX(LENGTH), 'cm') AS MAX_LENGTH
FROM FISH_INFO;
