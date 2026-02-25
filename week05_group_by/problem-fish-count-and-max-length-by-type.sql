-- problem-fish-count-and-max-length-by-type
-- 유형: GROUP BY + HAVING + 집계(AVG/COUNT/MAX) + NULL 처리(IFNULL)
-- 목표:
-- 1) LENGTH가 NULL(10cm 이하)인 물고기는 10cm로 취급하여 평균 길이 계산
-- 2) 평균 길이 >= 33cm 인 물고기 종류만 필터링
-- 3) 종류별로 잡은 수(FISH_COUNT), 최대 길이(MAX_LENGTH), 종류(FISH_TYPE) 출력
-- 정렬: FISH_TYPE 오름차순

SELECT
    COUNT(*) AS FISH_COUNT,
    MAX(LENGTH) AS MAX_LENGTH,
    FISH_TYPE
FROM FISH_INFO
GROUP BY FISH_TYPE
HAVING AVG(IFNULL(LENGTH, 10)) >= 33
ORDER BY FISH_TYPE ASC;
