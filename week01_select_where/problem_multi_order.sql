/*
문제 요약:
- 특정 테이블에서 맛(FLAVOR)을 조회하되,
  총 주문량 기준으로 내림차순 정렬하고,
  주문량이 같을 경우 출하 번호 기준 오름차순 정렬하는 문제.

핵심 개념:
- ORDER BY 다중 정렬
- DESC / ASC 정렬 방향 지정

접근 방법:
1) 조회할 컬럼은 FLAVOR
2) 첫 번째 정렬 기준: TOTAL_ORDER DESC
3) 두 번째 정렬 기준: SHIPMENT_ID ASC
*/

SELECT
    FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;
