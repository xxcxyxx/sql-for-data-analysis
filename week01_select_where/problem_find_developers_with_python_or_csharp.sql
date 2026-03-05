-- 문제: 조건에 맞는 개발자 찾기
-- 유형: BITMASK / SUBQUERY
-- 핵심: SKILL_CODE와 SKILLCODES.CODE를 비트 연산(&)으로 비교
-- 조건: Python 또는 C# 스킬 보유 개발자
-- 정렬: ID ASC

----------------------------------

SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE &
      (SELECT SUM(CODE)
       FROM SKILLCODES
       WHERE NAME IN ('Python','C#'))
ORDER BY ID;

