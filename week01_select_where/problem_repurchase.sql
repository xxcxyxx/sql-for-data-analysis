/*
문제 요약:
- 같은 사용자가 같은 상품을 2번 이상 구매한(재구매) 경우를 찾아
  사용자 ID와 상품 ID를 출력하는 문제.

핵심 개념:
- GROUP BY (사용자, 상품 단위로 묶기)
- HAVING (집계 조건 필터링)
- COUNT(*) 또는 COUNT(구매기록)로 재구매 판별
- ORDER BY 정렬 조건 (USER_ID ASC, PRODUCT_ID DESC)

접근 방법:
1) (USER_ID, PRODUCT_ID)로 그룹화
2) 구매 횟수가 2회 이상인 그룹만 HAVING으로 필터링
3) 정렬 조건에 맞게 출력
*/

SELECT
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >= 2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;
