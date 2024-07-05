<%
	String no=request.getParameter("no");
	BoardDAO dao=
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	.container{
		margin-top:50px;
	}
	.row{
		width: 960px;
		margin: 0px auto;
	}
	.a{
		overflow: hidden;
		text-overflow: ellipsis;
	}
</style>
</head>
<%--
		1. 브라우저 출력
		2. 사용자가 보내준 데이터를 받아서 => 오라클 연결 => 보여주는 창이 아니다
		   _ok.jsp 
 --%>
<body>
	<div class="container">
		<h3>글쓰기</h3>
		<div class="row">
		<form method="post" action="board_insert_ok.jsp">
			<table class="table">
				<th>
					<th width="25% class="text-right">이름</th>
					<td width="75%">
						<input type="text" size=20 class="input-sm" required>
					</td>
				</th>
			</table>
			<table class="table">
				<th>
					<th width="25% class="text-right">제목</th>
					<td width="75%">
						<input type="text" size=20 class="input-sm" required name="subject">
						<%--
							name=> 자바에서 보내준 데이터를 ㅂ다는 경우에 사용되는 속성명
							id, class=> 자바스크립트, CSS의 구분자 
						 --%>
					</td>
				</th>
			</table>
			<table class="table">
				<th>
					<th width="25% class="text-right">내용</th>
					<td width="75%">
						<input type="text" size=20 class="input-sm" required name="content">
					</td>
				</th>
			</table>
			<table class="table">
				<tr></tr>
					<th width="25% class="text-right">비밀번호</th>
					<td width="75%">
						<input type="text" size=20 class="input-sm" required name="pwd">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
						<input type="submit" value="글쓰기" class="btn-sm btn-success">
						<input type="button" value="취소" class="btn btn-sm btn-warnig"
						onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>