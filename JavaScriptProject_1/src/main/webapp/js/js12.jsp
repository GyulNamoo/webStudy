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
	width: 600px;
}
h3{
	text-align: center;
}
</style>
<script type="text/javascript">

// 전역변수 => const : 상수, let : 변수
const movie=
window.onload=function(){
	let html='https://www.kobis.or.kr';
	movie.map(finction(m){
		html+='<tr>'
				+'<td><img src="https://www.kobis.or.kr'+m.thumbUrl+''" width=30 heigth=30</td>'
				+'<td>'+m.movieNm+'</td>'
				+'<td>'+m.director+'</td>'
				+'<td>'+m.genre+'</td>'
				+'<td>'+m.whatchGradeNm'</td>'
				+'</tr>'
		
	})
}

</script>
</head>
<body>
	<div class="container">
		<h3 class="text-center">일일 박스오피스</h3>
		<div class="row">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center"></th>
						<th class="text-center">영화명</th>
						<th class="text-center">감독</th>
						<th class="text-center">장르</th>
						<th class="text-center">등급</th>
					</tr>
				</thead>
				<tbody>
				
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>