/*
요약:
- 진료과 코드 CS 또는 GS 필터링
- HIRE_YMD 내림차순 정렬
- 동일 날짜일 경우 이름 오름차순

핵심:
- WHERE IN 조건
- 다중 ORDER BY
*/

SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN ('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME ASC;

