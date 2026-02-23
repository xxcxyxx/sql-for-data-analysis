-- 문제: 고양이와 개는 몇 마리 있을까
-- 유형: GROUP BY + COUNT + 사용자 정의 정렬
-- 핵심 포인트:
-- 1) ANIMAL_TYPE별 개수 집계 → COUNT(*)
-- 2) Cat을 Dog보다 먼저 정렬
-- 3) 출력: ANIMAL_TYPE, count

SELECT
    ANIMAL_TYPE,
    COUNT(*) AS count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ('Cat', 'Dog')
GROUP BY ANIMAL_TYPE
ORDER BY
    CASE
        WHEN ANIMAL_TYPE = 'Cat' THEN 1
        WHEN ANIMAL_TYPE = 'Dog' THEN 2
    END;
