<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- fn : String의 메소드를 지원  --%>
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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
		$('#user-table > tbody > tr').hover(function(){
			//Listener()
			$(this).css('backgroundColor','#FC6').css('cursor','pointer')
			// mouseover
		},function(){
			$(this).css('backgroundColor','#FFF').css('cursor','none')
			//mouseout
		})
		
		$('#keyword').keyup(function(){
			let k=$("#keyword").val() // 입력값 읽기
			$('#user-table > tbody > tr').hide() // display:none
			let temp=$('#user-table > tbody > tr > td:nth-child(5n+4):contains("'+k+'")')
			$(temp).parent().show() // display:''
			//       상위태그  tr-td
		})
})
</script>
</head>
<body>
	<div class="container">
		<h3 class="text-center">뮤직 Top50</h3>
		<div class="row">
			<table class="table">
			<tr>
				<td>
					<input type="text" class="input-sm" id="keyword" size="20" placeholder="검색어 입력">
					</td>
				</tr>
				</table>
				<table class="user-table">
				<thead>
					<tr>
						<th class="text-center">순위</th>
						<th class="text-center"></th>
						<th class="text-center"></th>
						<th class="text-center">곡명</th>
						<th class="text-center">가수명</th>
					</tr>	
				</thead>
				<tbody>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td class="text-center">${vo.mno }</td>
							<td class="text-center">
								<c:choose>
									<c:when test="${fn:trim(vo.state)=='상승' }">
										<font color="blue">▲</font>&nbsp;${vo.idcrement }
									</c:when>
									<c:when test="${fn:trim(vo.state)=='하강' }">
										<font color="red">▼</font>&nbsp;${vo.idcrement }
									</c:when>
									<c:otherwise>
										<font color="gray">-</font>
									</c:otherwise>
								</c:choose>
							</td>
							<td class="text-center">${vo.img }</td>
							<td>${vo.title }</td>
							<td>${vo.singer }</td>
								<img src="${vo.poster }" style="width:30pxl height:30px">
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>