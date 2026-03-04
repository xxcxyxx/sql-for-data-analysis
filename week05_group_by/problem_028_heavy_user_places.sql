-- 문제: 헤비 유저가 소유한 장소
-- 유형: GROUP BY / HAVING / SUBQUERY
-- 핵심: 공간을 두 개 이상 등록한 HOST_ID(헤비 유저) 조회
-- 조건: COUNT(*) >= 2
-- 정렬: ID 오름차순

SELECT
    ID,
    NAME,
    HOST_ID
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(*) >= 2
)
ORDER BY ID ASC;
