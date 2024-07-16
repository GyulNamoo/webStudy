<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
		1. HTML / 자바 분리 => MVC,Spring에서는 나오지 않는다 
		   <% %>, <%= %> => (X)
		   =====   =====
		   | 자바    | 브라우저 출력
		     		   
		     |<c:~>  
		2. 지시자
			page
			 	import, contentType. errorPage => web.xml(등록)
			 taglib => prefix, uri => 20장 => JSP에서 자바 대체
		**3. 내장 객체 : MVC /Spriong
			request
				= getParameter()
				= getParameterValues()
				= setCharacterEncoding()
				= getSession() / getCookie()
				= setAttribute() / getAttribute()
				= getContextPath() / getRequestURI()
			response
				= setHeader()
				= sendRedirect()
				= addCookie()
			sesson
				=setAttribute()
				=getAttribute()
				=invalidate()
				=removeAttribute();
			application
				=getRealPath()
			cookie (내장 객체가 아니다) => 문자열만 저장이 가능
				=setPath()
				= setMaxAget() => 저장 기간 => 0이면 삭제
				= getName() : 키를 읽어 올 때 사용
				= getValue() : 값을 읽는 경우
				생성 : new Cookie(키, 값) => 최근 방문 : 보안에 취약
			액션태그
			<jsp:include> : 계속 사용 (tiㅣs기 사라짐)
			============= ㄴ조립식
			
			데이터베이서 : DBCP . JDBC => 자바와 오라클 연결 
			
			NV를 위한 준비 : EL / JST:
			            MVC를 제작 
			            
			라이브러리 => cos.jar, commons-dpbc.jar, commonst-pool.jsr
							  =================================== tomcat
						|
						업로드 라이브러리  
			
			=>Session / cookie
			
			Coockie : 브라우저에 저장 
			          ========== 보안 취약
			          => 아마존에서 주로 사용(로그인)
			          => 최근 방문 /  자중 로그인ㄴ 
			=>저장 : 생성자 이름
					CcOOCKIE COOKIE = MEW COookie(String key, String value)
												  ==============중복없는 데이터
            => 저장 기간 설정 : SetMaxAge(18000)	; =>초단위
            				60*60*24
            => 저장 위치 설정 setPatch("\")
            => 브라우저로 전송 : response.accCookce();
            => 쿠기 전체 읽기 : 
           					request.getCockies()
        	==========================================================================
        	
        	Session : 서버에 저장 (사용자의 일부 정보 저장)
        				=>상품 정보 (장바구니)
        	 			=> 저장값 읽기 : getAttrebute()
        	 			=> 저장된 데이터를 1개씩 : removeAttirbute()
        	 			=> 저장된 데이터 전체 삭제 : invailbate()
        	 			=> 저장 기간을 설정 : 디폴드 : 30초
        	 				setMaxInactioveInterval (초단위)
        	 			=> gieid() => 사용자마다 세션은 서버에 한개만  생성 => 구분자
        	 			   ========
        	 			=> isNew : 새로 생성된 세션 ㅇ부 확인 
        	 			=> 데이터를 지속적으로 관리하는 클래스
        	 			   ============================
        	 			   => 301페이지
        	 			   => Session vs Cookie => 
					
		     
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>