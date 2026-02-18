-- 문제: 조건에 맞는 도서와 저자 리스트 출력하기
-- 유형: JOIN (INNER JOIN) + 조건 필터링 + 날짜 포맷 지정 + 정렬
-- 핵심 포인트:
-- 1) BOOK과 AUTHOR를 AUTHOR_ID 기준으로 조인
-- 2) '경제' 카테고리 필터링
-- 3) DATE_FORMAT으로 출력 형식 맞추기
-- 4) 출판일 오름차순 정렬

SELECT
    b.BOOK_ID,
    a.AUTHOR_NAME,
    DATE_FORMAT(b.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK b
JOIN AUTHOR a
  ON b.AUTHOR_ID = a.AUTHOR_ID
WHERE b.CATEGORY = '경제'
ORDER BY b.PUBLISHED_DATE ASC;
