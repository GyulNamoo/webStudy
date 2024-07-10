<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%--
   		URL주소가 바뀌면 request....
    --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	ID : <%= request.getParameter("id") %><br>
	Password : <%=request.getParameter("pwd") %>
</body>
</html>