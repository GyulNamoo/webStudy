<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
			Jquery : 자바스크립트 라이브러리
			1. 라이브러리 다운로드 / 원격
				 원격
				 <script type="text/javascript" src="http://code.jquery.com/jquery.js">
				 *** juqery => 충돌이 되면 안된다 
				 *** 라이브러리는 반드시 main.jsp => CSS
	    2. jquery의 시작
	       자바스크립트의 시작 : window.onload=function(){}
	       => $(function(){소스코딩}) 
	       => $(document.ready(function(){}(소스코딩))
	            =============== 생략이 가능
	    3. jquery의 함수 => $
	                      === document.querySelector()
	                      
	                      => document.querySelector("h1")
	                         $("h1") : tag명 
	                      => document.querySelector("#id")
	                         $("#id") : ID명
	                      => document.querySelector(".id")
	                         $('.id')  : class명 
	                      => 기타 : 속성선택자 , 자손 , 후손, 가상 선택자.. (CSS 선택자와 동일)
	 		4. jquery => 내장 객체 => window, document, location, history
	 													  $(window), $(document), $(location), $(history)
	 		5. 이벤트 처리 / 유효성 검사 / 다른 파일의 데이터 읽기 (Ajax)
	 		  1) 이벤트
	 		  		=> Listener
	 		      $().on('이벤트명',function(){})
	 		      				 click , keyup, hober, keydown ....
	 		      $().on('이벤트명',()=>{})
	 		      => 일반 이벤트 
	 		      $().click(function(){})
	 		      $().keyup(function(){}) ...
	 		      === 태그 읽기
	 		  2)											  
		 	6. jquery에서 지원하는 함수
		 	   1) getter / setter
		 	               ======
		 	               태그에 값을 설정
		 	     ======== 태그에 값을 읽을 때 사용 
		 	     
		 	     = <input type=text...> <textarea> , <select> : 입력하는 창
		 	     => $().val() => value값 
		 	        ========= getter
		 	        $().val(값)
		 	        ========== setter
		 	        
		 	     => <td>|||||</td>
		 	        $('td').text() : getter => 값을 읽기 
		 	        $('td').text("Hello") : setter
		 	        
		 	     => <a href="">
		 	        $('a').attr("href") => getter
		 	        $('a').attr("href","값") => setter
		 	     
		 	     => html() , html(값) => innerrHTML => 한개만 생성
		 	     => append() => createElement() => 여러개 생성
		 	     
		 	  => jquery UI => 긁어오자!!
		 	  => Ajax
		 	 7. CSS 적용 => css("속성","값")
		 	 						   css(("속성":값,"속성":값....))
		 	 						        ==== CSS가 가지고 있는 속성
		 	 						             - : 대문자
			 Jquery는 DOMScript
			         ========= 태그를 제어하는 프로그램 
			         ** 라이브러리가 무겁다 = 서버 속도가 늦어진다
							 ** Vue / React
							 ** Jquery => 4,5버전 (beta)
			=> MSA  			          		 	 						                 	
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript"> 
$(function(){
	// window.onlaod=function(){}
	// setter=> val("값")	=> <input> , <select>, <textarea>
	$('#name').val("홍길동") // 값 추가 => 수정, 자동 로그인 
	// 이벤트 처리 
	$('button').on('click',function(){
		let addr=$('#addr').val()	// 입력값 일긱 => 로그인
		alert(addr)
	})
})
</script>
</head>
<body>
	<input type="text" id="name" size=15><br>
	<input type="text" id="addr" size=15>
		<button>클릭</button>	
</body>
</html>