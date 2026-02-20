-- 문제: 경기도에 위치한 식품창고 목록 출력하기
-- 유형: IS NULL + IFNULL + 문자열 필터링
-- 핵심 포인트:
-- - 주소가 '경기도'로 시작하는 창고만 조회
-- - FREEZER_YN이 NULL이면 'N'으로 출력
-- - 창고 ID 기준 오름차순 정렬
-- 출력 컬럼: WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, FREEZER_YN

SELECT
    WAREHOUSE_ID,
    WAREHOUSE_NAME,
    ADDRESS,
    IFNULL(FREEZER_YN, 'N') AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기도%'
ORDER BY WAREHOUSE_ID ASC;
