<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
				논리연산자 : && , ||
				  (조건)  &&  (조건)   => 범위 포함, 기간 포함
				  =====      =====
				    |          | 
				    ============
				         |
				        결과값 : true / false
				        
				   (조건)  ||  (조건)  : 범위 미포함, 기간 미포함
				  =====      =====
				    |          | 
				    ============
				         |
				        결과값
				        
				  && : 직렬연산자 => 조건 두개가 동시에 true일 경우에만 true
				  || : 병렬연산자 => 조건 두개 중 한개 이상이 true => true
					
					========================================
															&&           ||
					========================================
					 true  true         true         true
					========================================
					 true  false        false	       true
					========================================
					 false  true        false	       true
					=========================================
					 false false        false        false
					=========================================

				  대입연산자
				    =
				   	+=
				   	-=
				   					  
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 * 		1.Jquery : $(funtion(){})
 			2. VueJS : mounted()
 			3. React : useEffect()
 */
 window.onload=function(){
 			// 논리연산자 => true / false
 			let i =(6<7) && (6===7)
 			console.log("i="+i)
 			let j=(6<7) || (6===7)
 			console.log("j="+j)
 			
 			// 대입 연산자
 			let k=10;
 			console.log("k="+k)
 			k+=20 
 			console.log("k="+k)
 			k-=10
 			console.log("k="+k)
 			
 			let m=(6%2===0)?"짝수":"홀수"
 			console.log("m="+m)
 			}
 			/*
 					Object : 배열 / 객체
 					          []    {}      ==> 값이 없는 경우 : null
 				연산처리 에러 : NaN
 				0으로 나눈 경우 : Infinity
 				=> 브라우저안에 에러가 출력되지 않는다 (흰 화면만 출력) => 개발자 도구에서 확인
 				변수에 초기화가 안된 경우 : undefined
 				=> 정수/정수 = 실수
 				=> HTML에 입력된 모든 값은 문자열이다 => 형변환
 					 String(변경할 데이터), Number(변경할 데이터), Boolean(변경할 데이터)
 					 																					| 숫자
 					 																					| 문자
 					 																					| 배열, 객체 
 				
 				=> Ajax, VueJS, ReactJS => 자바스크립트
 				   ====================
 					   | 자바에서 데이터 전송 	
 					   | 자바스크립트는 데이터를 읽을 수 없다, 오라클 연결이 안된다 
 			*/
</script>
</head>
<body>

</body>
</html>