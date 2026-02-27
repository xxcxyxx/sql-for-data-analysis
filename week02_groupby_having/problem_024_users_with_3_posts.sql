-- 문제: 조건에 맞는 사용자 정보 조회하기
-- 유형: JOIN / GROUP BY / HAVING / 문자열 처리
-- 핵심: 게시글 3건 이상 작성한 사용자 조회
-- 정렬: USER_ID 내림차순

SELECT
    U.USER_ID,
    U.NICKNAME,
    CONCAT(
        U.CITY, ' ',
        U.STREET_ADDRESS1, ' ',
        COALESCE(U.STREET_ADDRESS2, '')
    ) AS 전체주소,
    CONCAT(
        SUBSTR(U.TLNO, 1, 3), '-',
        SUBSTR(U.TLNO, 4, 4), '-',
        SUBSTR(U.TLNO, 8, 4)
    ) AS 전화번호
FROM USED_GOODS_USER U
JOIN USED_GOODS_BOARD B
    ON U.USER_ID = B.WRITER_ID
GROUP BY
    U.USER_ID,
    U.NICKNAME,
    U.CITY,
    U.STREET_ADDRESS1,
    U.STREET_ADDRESS2,
    U.TLNO
HAVING COUNT(B.BOARD_ID) >= 3
ORDER BY U.USER_ID DESC;
