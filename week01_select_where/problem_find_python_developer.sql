-- 📌 문제: Python 개발자 찾기
-- DEVELOPER_INFOS 테이블에서 Python 스킬을 가진 개발자의
-- ID, EMAIL, FIRST_NAME, LAST_NAME을 조회
-- 결과는 ID 기준 오름차순 정렬
--
-- 💡 핵심 개념
-- - 여러 컬럼 중 특정 값 존재 여부 확인
-- - OR 조건 활용
-- - ORDER BY 정렬

SELECT 
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 = 'Python'
   OR SKILL_2 = 'Python'
   OR SKILL_3 = 'Python'
ORDER BY ID ASC;
