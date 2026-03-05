-- 문제: FrontEnd 개발자 찾기
-- 유형: JOIN / BITWISE 연산
-- 핵심: 개발자의 SKILL_CODE와 Front End 스킬 CODE를 비트 연산으로 비교
-- 조건: SKILL_CODE & CODE > 0
-- 정렬: ID ASC

SELECT
    D.ID,
    D.EMAIL,
    D.FIRST_NAME,
    D.LAST_NAME
FROM DEVELOPERS D
JOIN SKILLCODES S
    ON S.CATEGORY = 'Front End'
WHERE D.SKILL_CODE & S.CODE > 0
ORDER BY D.ID ASC;
