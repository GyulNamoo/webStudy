<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
			제어문
				= 조건문
						단일 조건문	: 논리 연산자, 비교 연산자, 부정 연산자 => true / false
							형식)
									if(조건문
									{
											조건문이 true일 때 수행하는 문장
									}
							선택 조건문
									if(조건문)
									{
											조건이 true일 때 처리하는 문장
									}
									else
									{
											조건 false일 때 처리하는 문장
									}
							다중 조건문		=> 회원가입 , 글쓰기 ... 유효성검사 
									if(조건문)
									{
											조건이 true일 때 수행하는 문장 => 종료
											false면 밑에 있는 조건문으로 이동
									}
									else if(조건문)
									{
											조건이 true일 때 수행하는 문장 => 종료
											false면 밑에 있는 조건문으로 이동
									}
									else if(조건문)
									{
											조건이 true일 때 수행하는 문장 => 종료
											false면 밑에 있는 조건문으로 이동
									}
									else
									{
											
									}
						선택 조건문
						다중 조건문
				= 선택문
						switch~case
						형식) switch(숫자,문자)
								{ case : ...
								
									default : 생략이 가능 => 해당 case가 없는 경우}
			  = 반복문
			  		while
			  		do~while
			  		for
			  			= 일반 for
			  			= for in (인덱스 번호)
			  			= for of (for-each)
			  			= 함수
			  				***forEach()
			  				배열.forEach(function(변수)(처리))
			  				                     ==== 배열에서 값을 1개씩 자동으로 읽어 온다
			  				***map()
			  				배열.map(function(변수)(처리))
			  											   === 배열에서 값을 1개씩 읽어온다
			  			  배열.map((변수)=>{})
			  				
			  = 반복 제어문
			  		break : 반복문을 중단할 때 사용 
 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*

 */
 window.onload=() => {
	 	let a=10;
	 	if(a%2==0)
	 	{
	 		//document.write(a+"는(은) 짝수입니다")	
	 	}
 }	
	function login()
	{
		let id=document.getElementById("id").value
		if(id.trim()==="")
		{
			alert("아이디 입력하세요")	
		}
		
	}
	
</script>
</head>
<body>
	ID:<input type="text" size="10" id="id">
	<input type="button" value="login" onclick="login()">
	
</body>
</html>