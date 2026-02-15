/*
문제 요약:
- 특정 차량 종류에 해당하는 데이터만 필터링한 뒤,
  일일 요금의 평균을 계산하는 문제.

핵심 개념:
- WHERE 조건 필터링
- AVG() 집계 함수
- ROUND() 반올림 처리
- 컬럼 별칭(AS)

접근 방법:
1. 차량 종류가 특정 값인 데이터만 WHERE로 필터링
2. AVG()로 평균 계산
3. ROUND()로 소수 첫째 자리에서 반올림
4. 컬럼명을 지정하여 출력

주의할 점:
- 평균 계산 시 ROUND 적용 위치 확인
- 컬럼명 별칭 지정 필수
*/

SELECT 
    ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';
