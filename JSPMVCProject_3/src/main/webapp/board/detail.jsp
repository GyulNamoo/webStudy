<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.container{
		margin-top: 50px;
	}
	.row{
		margin:0px auto;
		width: 800px;
	}
	h3{
		text-align: center;
	}
	</style>
</head>
<body>
	<div class="container">
		<h3>내용보기</h3>
		<div class="row">
			<table class="table">
				<tr>
					<th width=20% class="text-center">번호</th>
					<td width=30% class="text-center">${vo.no }</td>
					<th width=20% class="text-center">작성일</th>
					<td width=30% class="text-center">${vo.dbday }</td>
				</tr>
				<tr>
					<th width=20% class="text-center">이름</th>
					<td width=30% class="text-center">${vo.name }</td>
					<th width=20% class="text-center">조회수</th>
					<td width=30% class="text-center">${vo.hit }</td>
				</tr>
				<tr>
					<th width=20% class="text-center">제목</th>
					<td colspan="3">${vo.subject }</td>
				</tr>
				<tr>
					<td colspan="4" valign="top" class="text-left" height="200">
					<pre style="white-space; pre-wrap;border:none;background-color_white">${vo.content }</pre>
					</td>
				</tr>
				<tr>	
					<td colspan="4" class="text-center">
					<a href="reply.do?no=${vo.no }" class="btn btn0xs btn-danger">일반</a>
					<a href="update.do?no=${vo.no }" class="btn btn0xs btn-success">수정</a>
					<a href="#" class="btn btn0xs btn-info">삭제</a>
					<a href="list.do" class="btn btn0xs btn-warning">목록</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>