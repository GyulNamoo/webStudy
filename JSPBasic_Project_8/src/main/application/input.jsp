<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application-RealPath</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
	margin-top: 50px;
}
.row{
	margin:0px auto;
	width: 600px;
}
h3{
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
	<h3>파일 업로드</h3>
	<div class="row">
		<%-- enctype= "multipart/form-data" 파일 ㅇ버로드시 사용 : 파일 업로드 프로포콜 반드시 post 기반
		192.168.10.111
		--%>
		<form method="post" action="save.jsp" enctype="multipart/form-data">
			<input type=file name=upload size=25>
			<button class="btn-sm btn-danger">전송</button>
		</form>
		
	</div>
	</div>
</body>
</html>