<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.bean.*;"%>

<%--	
request.setCharacterEncoding("UTF-8");  //디코딩
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
		
	MemberVO vo = new MemberVO();
	vo.setName(name);
	vo.setSex(sex);
	vo.setAddr(address);
	vo.setPhone(phone);
--%>
<jsp:useBean id="vo" class="com.sist.bean.MemberVO">
<jsp:setProperty name ="vo" property="*"/>;   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		이름:<jsp:getProperty name="vo" property="name" /><br>
		성별:<jsp:getProperty name="vo" property="sex" /><br>
		주소:<%=vo.getAddr() %><br>
		전화:<%=vo.getPhone() %>
	</div>
</body>
</html>