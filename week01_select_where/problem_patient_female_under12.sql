/*
요약:
- 12세 이하 여성 환자 조회
- 전화번호 NULL -> 'NONE' 치환
- AGE DESC, PT_NAME ASC 정렬

핵심:
- WHERE 조건 필터링
- COALESCE로 NULL 처리
- 다중 ORDER BY
*/

SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    COALESCE(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12
  AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;
