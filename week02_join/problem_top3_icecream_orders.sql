-- 문제: 주문량이 많은 아이스크림들 조회하기
-- 유형: JOIN + GROUP BY + TOP N
-- 핵심:
-- 1) JULY는 같은 FLAVOR가 여러 번 나올 수 있으므로 7월 주문량을 FLAVOR 기준으로 SUM
-- 2) 상반기 주문량(FIRST_HALF)과 7월 주문량을 더해 총 주문량 계산
-- 3) 총 주문량 내림차순으로 상위 3개 FLAVOR 조회

SELECT
    f.FLAVOR
FROM FIRST_HALF f
JOIN JULY j
  ON f.FLAVOR = j.FLAVOR
GROUP BY
    f.FLAVOR,
    f.TOTAL_ORDER
ORDER BY
    (f.TOTAL_ORDER + SUM(j.TOTAL_ORDER)) DESC
LIMIT 3;
