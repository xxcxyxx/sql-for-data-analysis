-- 문제: 나이 정보가 없는 회원 수 구하기
-- 유형: IS NULL + COUNT
-- 핵심 포인트:
-- - NULL 비교는 = NULL 이 아니라 IS NULL 사용
-- - AGE가 NULL인 행만 필터링
-- - 컬럼명은 USERS로 지정

SELECT
    COUNT(*) AS USERS
FROM USER_INFO
WHERE AGE IS NULL;
