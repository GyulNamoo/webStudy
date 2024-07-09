<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.database.*"%>
<%
	DataBaseConnection dbConn = new DataBaseConnection();
	Connection conn= dbConn.getConnection();
	String sql="SELECT * FROM dept";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>
<%--
	contentType
	import
	pageEncoding
	errorPage
	isErroPage
	buffer
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	while(rs.next())
	{
	%>
		<li><%= rs.getInt(1) %>-<%= rs.getString(2) %>-<%=rs.getString(3) %></li>
	<%
	}
	rs.close();
	dbConn.disConnection(conn,ps);
	%>
</body>
</html>