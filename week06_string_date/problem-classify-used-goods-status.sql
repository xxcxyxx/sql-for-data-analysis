-- problem-classify-used-goods-status
-- 유형: WHERE 날짜 필터 + CASE 조건 분류
-- 목표:
-- 1) 2022-10-05에 등록된 게시글 조회
-- 2) STATUS 값 변환
--    SALE → 판매중
--    RESERVED → 예약중
--    DONE → 거래완료
-- 3) BOARD_ID 기준 내림차순 정렬

SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE
        WHEN STATUS = 'SALE' THEN '판매중'
        WHEN STATUS = 'RESERVED' THEN '예약중'
        WHEN STATUS = 'DONE' THEN '거래완료'
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC;
