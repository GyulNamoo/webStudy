<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//사용자가 보내준 값을 받는다 board_detail.jsp?no=30
	String no=request.getParameter("no");
	BoardDAO dao = 


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
		.container{
		margin-top:30px;
		}
		.row{
		margin:0px auto;
		width:800px
		}
		h3{
		text-align: center;}
</style>
</head>
<body>
	<div class="container">
		<h3>내용보기</h3>
			<div class="row">
				<table class="table">
					<tr>
						<th width="20%" class="text-center danger">번호</th>
						<th width="30%" class="text-center"><%=vo.getNo() %></th>
						<th width="20%" class="text-center danger">작성일</th>
						<th width="30%" class="text-center"><%=vo.getDb_day() %></th>
					</tr>				
					<tr>
						<th width="20%" class="text-center danger">이름</th>
						<th width="30%" class="text-center"><%=vo.getName() %></th>
						<th width="20%" class="text-center danger">조회수</th>
						<th width="30%" class="text-center"><%=vo.getHit() %></th>
					</tr>							
					<tr>
						<th width="20%" class="text-center danger">제목</th>
						<td colspan="2"><%=vo.getSubject %></td>
					</tr>			
					<tr>
						<td colspan="4" class="text-left" valign="top" heigjt="200">
							<pre></pre>
						</td>
					</tr>
					<tr>
						<td colspan="4" class="text-left" valign="top" height="200">
							<pre style="white-space: pre-wrap; border:none;"></pre>
						</td>
						<td colspan="4" class="text-right"></td>
							<a href="board_update.jsp?no=<%=no %>" class="btn btn-xs btn-info">수정</a>
							<a href="board_delete.jsp?no=" class="btn btn-xs btn-success">삭제</a>
							<a href="board_list.jsp" class="btn btn-xs btn-warning">목록</a>
						</td>
					</tr>
				</table>
			</div>"
	</div>
</body>
</html>