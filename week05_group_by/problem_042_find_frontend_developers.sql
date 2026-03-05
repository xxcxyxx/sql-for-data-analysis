-- 문제: FrontEnd 개발자 찾기
-- 유형: BITWISE 연산 / SUBQUERY
-- 핵심: Front End 스킬 CODE들을 합친 비트마스크와 개발자의 SKILL_CODE를 비교
-- 조건: SKILL_CODE & (Front End CODE 합) > 0
-- 정렬: ID ASC

SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPERS
WHERE (SKILL_CODE & 
      (SELECT SUM(CODE)
       FROM SKILLCODES
       WHERE CATEGORY LIKE 'Front%')) > 0
ORDER BY ID;
