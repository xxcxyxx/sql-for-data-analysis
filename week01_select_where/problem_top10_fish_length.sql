/*
요약:
- LENGTH 내림차순, 같으면 ID 오름차순
- 상위 10개만 조회

핵심:
- ORDER BY (다중 정렬)
- LIMIT (Top-N)
*/
 
SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID ASC
LIMIT 10;
