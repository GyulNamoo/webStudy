<%@page import="com.sist.dao.LocationVO"%>
<%@page import="com.sist.dao.SeoulDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//"detail.js?no="+no
 	String no = request.getParameter("no");
 	SeoulDAO dos = SeoulDAO.newInstance();
 	LocationVO vo = dao.seoul
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
	.container{
		margin-top: 50px;
	}
	.row{
		margin:0px auto;
		width: 800px;
	}
</style>
</head>
<body>
	<div class="container">
		<h3 class="text-center"><%=vo.getTitle() %></h3>
		<div class="row">
			<table class="table">
				<tbody>
					<tr>
						<td class="text-center">
							<img src="<%vo.getPoster()%>" style="width:600px height:400px;">
						</td>
					</tr>
					<tr>
						<td><%=vo.getMsg() %></td>
					</tr>
					<tr>
						<td><address><%=vo.getAddress()%></address></td>
					</tr>
					<tr>
						<td class="text-right">
							<a href="list.jsp" class="btn btn-sm btn-primary">목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>