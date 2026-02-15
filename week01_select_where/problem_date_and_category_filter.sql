/*
문제 요약:
- 특정 연도에 출판되었고,
  특정 카테고리에 해당하는 도서를 조회하는 문제.
- 결과는 출판일 기준 오름차순 정렬.

핵심 개념:
- YEAR() 날짜 함수
- 문자열 조건 필터링
- ORDER BY 오름차순 정렬

접근 방법:
1) CATEGORY가 특정 값인 데이터 필터링
2) 출판 연도가 2021년인 데이터 필터링
3) 필요한 컬럼(BOOK_ID, PUBLISHED_DATE)만 조회
4) 출판일 기준 오름차순 정렬
*/

SELECT
    BOOK_ID,
    DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE CATEGORY = '인문'
  AND PUBLISHED_DATE >= '2021-01-01'
  AND PUBLISHED_DATE < '2022-01-01'
ORDER BY PUBLISHED_DATE ASC;
