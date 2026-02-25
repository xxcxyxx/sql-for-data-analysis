-- problem-total-book-sales-by-category-jan-2022
-- 유형: JOIN + GROUP BY + SUM + DATE 범위 필터
-- 목표:
-- 2022년 1월 카테고리별 총 판매량(TOTAL_SALES) 집계
-- 정렬: CATEGORY 오름차순

SELECT
    b.CATEGORY,
    SUM(s.SALES) AS TOTAL_SALES
FROM BOOK b
JOIN BOOK_SALES s
  ON b.BOOK_ID = s.BOOK_ID
WHERE s.SALES_DATE >= '2022-01-01'
  AND s.SALES_DATE <  '2022-02-01'
GROUP BY b.CATEGORY
ORDER BY b.CATEGORY ASC;
