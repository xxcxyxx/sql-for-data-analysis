-- problem-most-viewed-board-files
-- 유형: MAX 서브쿼리 + JOIN + CONCAT 문자열 생성
-- 목표:
-- 1) 조회수가 가장 높은 게시글 1개 찾기
-- 2) 해당 게시글의 첨부파일 경로 생성
-- 3) FILE_ID 기준 내림차순 정렬
-- 경로 규칙:
-- /home/grep/src/{BOARD_ID}/{FILE_ID}{FILE_NAME}.{FILE_EXT}

SELECT
    CONCAT('/home/grep/src/',
           B.BOARD_ID,
           '/',
           F.FILE_ID,
           F.FILE_NAME,
           F.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_FILE F
    ON B.BOARD_ID = F.BOARD_ID
WHERE B.VIEWS = (
    SELECT MAX(VIEWS)
    FROM USED_GOODS_BOARD B
)
ORDER BY F.FILE_ID DESC;
