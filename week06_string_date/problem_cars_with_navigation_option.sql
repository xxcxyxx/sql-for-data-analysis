-- 문제: 특정 옵션이 포함된 자동차 리스트 구하기
-- 유형: 문자열 검색 (LIKE)
-- 핵심 포인트:
-- - OPTIONS 컬럼에서 '네비게이션'이 포함된 행 조회
-- - 문자열 포함 여부 → LIKE '%네비게이션%'
-- - CAR_ID 기준 내림차순 정렬
-- 출력 컬럼: CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS

SELECT
    CAR_ID,
    CAR_TYPE,
    DAILY_FEE,
    OPTIONS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%네비게이션%'
ORDER BY CAR_ID DESC;
