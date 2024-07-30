<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	width: 960px;
}
.a{
	white-space : nowrap;
	overflow: hidden
	text-overflow: ellipsis;
}

</style>
<script type="text/javascript" src="https://unpkg.com/axios/dist/dxios.min.js">
<script type="text/javascript">
let food_list=[]
let startPage=0
let endPage=0
let curpage=0
let totalpage=0
window.onload=()=>{
	
}
	axious.get("http://localhost/JavaScriptProject_3/js/food_find_js.do")
	.then((response)=>{
		food_list=response.data
		curpage=response.data[0].curpage
		totalpage=response.data[0].totalpage
		startPage=response.data[0].startPage
		endPage=response.data[0].endPage
	)}
	
	let html=''
	// 화면 출력
	food_list.map((vo)=>{
			html+='<div class="col-sm-3">'
				+'<div class="thumbnail">'
				+'<img src="'+vo.poster+'" style="width:100%">'
				+'<p>'+vo.name+'</p>'
				+'</div>'
				+'</div>'
				
	})
		let main=document.querySelector("#poster");
		main.innerHTML=html;
		
		page='<a href="#" class="btn btn-sm btn-danger">이전</a>'
				+curpage+" paeg / "+totalpage+" pages"
				+'<a href="#" class=btn btn-sm btn-success">다음</a>'
		let page=document.querySelector("#pages");
				page.innerHTML=pages
}
function imgChange(){
	
}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<input type=text id="fd" size=20 class="input-sm">
			<input type=button value="검색" class="btn-sm btn-danger" onclick="imgChange()">	
		</div>
			<div style="height:10px"></div>
			<div class="row" id="poster">
			</div>
			<div class="col-sm-4">
				<table class="table">
					<tr>
						<td width="30%" class="text-center" rowspan="6">
						<img src="" style="width: 100%" id="image">
						</td>
						<td colspan="2">
							<h3><span id="title"></span>&nbsp;<spans style="color:orange" id="score"></spans></h3>
						</td>
					</tr>
					<tr>
						<td width=20% class="text-center">음식종류</td>
						<td width=50% id="type"></td>
					</tr>
					<tr>
						<td width=20% class="text-center">주소</td>
						<td width=50% id="address"></td>
					</tr>
					<tr>
						<td width=20% class="text-center">전화</td>
						<td width=50% id="phone"></td>
					</tr>
					<tr>
						<td width=20% class="text-center">테마</td>
						<td width=50% id="theme"></td>
					</tr>

				</table>
			</div>
			<div style="height:10px"></div>
			<div class="text-center" id="pages">
			
			</div>
	</div>
</body>
</html>