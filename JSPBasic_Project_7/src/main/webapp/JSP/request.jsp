<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
	<h3 class="text-center">Request객체</h3>
		<table class="table">
			<tr>
				<th width="20%">클래스명</th>
				<td width="80%">HttpServletRequest</td>
			</tr>
			<tr>
				<th width="20%">기능</th>
				<td width="80%">
					<ul>
						<li>사용자 전송한 데이터를 관리(요청 정보)</li>
						<li>브라우저 정보(서버 정보)</li>
						<li>데이터 추가 기능  </li>
					</ul>
				</td>
			</tr>
			<tr>
				<th width="20%">주요 메소드</th>
				<td width="80%">
					<ul>
						<li style="color"> ***String getParameter(String key):사용자가 보내준 값을 받을 때 사용</li>
						<li>String getParameterValues(String key):사용자가 보내준 값을 받을 때 사용(멀티) checkbox사용시에 주로 사용</li>
						<li style="color">void setCharacterEncoding("한글"):디코딩(브라우저 자바는 한글 호환이 안된다)</li>
						<li>String getRemoteAddress(): 사용자의 IP를 가지고 올 때</li>
						<li>***String getRequestURI(): 사용자가 요청한 파일의 경로 </li>
						<li>***String getContextPath(): 경로의 루트: 프로젝트 명</li>
						<li style="color">***void setAttribute(String key,Object obj):필요한 경우 데이터 추가후 전송</li>
						<li style="color">***Object getAttribute(String key):추가된 데이터 읽기 </li>
						<li style="color:red">getSession():세션생성,getCookie()</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>