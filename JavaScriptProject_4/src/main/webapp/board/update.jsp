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
		width: 900px;
	}
	
</style>
<script type="text/javascript" scr="">
{
// 유효성 검사 => 사용자에 입력을 유도 => NOT NULL / Primary KEY => 자바스크립트
	let no = document.quertySelctor('#no') // 'hidden'
	
	// 서버연결 => axios.get => GET, axios.post => POST
	// GET 한글처리가 없다, POST => request.setCharacterEncoding처리
	// update_ok => GET  insert_ok => POST
	/*
			웹 : 
						1. 전송 => 받아서 출력
						2. 전송방식 => GET/POST
						3. 데이터베이스 : SQL문장
						4. 어떤 화면을 브라우저에 출력할지 
	*/
	axios.get('update_ok.do',{	//Model로 이동 => 처리 
	params:{
		no:no.value,
		name:name.value,
		subject:subject.value,
		content:content.value;
		pwd:pwd.value
		}
	}).then(function(result){
		// 벤치마킹 = 데이터추출 => 데이터베이스 컬럼 => ERD
		if(result.data==='yes')
			{
					// 수정된 상태			
					// 이동
					location.href="detail.do?no="+no.value
			}else
				{
					// 비밀번호가 틀리다
					alert("비밀번호가 틀립니다!!\n다시 입력하세요")
					pwd.value=''
					pwd.focus()
				}
	})
	// a.jsp => 서버 (Controller) => a.jsp
	// ===== 메모리 해제(distroy())		===== 새로운 JSP
	// 같은 파일에어 작업 
}
</script>
</head>
<body>
<%--
			.do ===> *.do
			  list.do
			  insert.do
			  insert_ok.do
			  detail.do
			  ==================>DispatcherServlet(Controller) 호출
			                     => service() 메소드 호출	                     
			                     
			  JSP   ==================    Model    ================> DAO
			  .do                    @RequestMapping()  <===========
			  = <a>                          |
			  = <form>                       | request
			  = axios.get()                  |
			    서버에 요청                    JSP													
 --%>
<div class="wrapper row3">
  <main class="container clear">
	  <div class="brow">
	   <h2 class="sectiontitle">수정하기</h2>
	   <form method=post action="../board/update_ok.do">
	   <table class="table">
	     <tr>
	      <th width="15%" class="text-right">이름</th>
	      <td width="85%">
	        <input type=text name=name size=20 class="input-sm" value="${vo.name }">
	        <input type=hidden name=no value="${vo.no }">
	      </td>
	     </tr>
	     <tr>
	      <th width="15%" class="text-right">제목</th>
	      <td width="85%">
	        <input type=text name=subject size=60 class="input-sm" value="${vo.subject }">
	      </td>
	     </tr>
	     <tr>
	      <th width="15%" class="text-right">내용</th>
	      <td width="85%">
	        <textarea rows="10" cols="60" name=content>${vo.content }</textarea>
	      </td>
	     </tr>
	     <tr>
	      <th width="15%" class="text-right">비밀번호</th>
	      <td width="85%">
	        <input type=password name=pwd size=10 class="input-sm">
	      </td>
	     </tr>
	     <tr>
	       <td colspan="2" class="text-center inline">
	         <button class="btn-danger btn-sm">수정</button>
	         <input type=button value="취소" class="btn-primary btn-sm"
	          onclick="javascript:history.back()">
	       </td>
	     </tr>
	   </table>
	   </form>
	  </div>
  </main>
 </div>
</body>
</html>