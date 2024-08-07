<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 *		브라우저 자체에서 처리 => javascript
 													 ==========
 														사용자 이벤트 (사용자 선택, 마우스 클릭..)
 
 			on~
 			많이 사용하는 event
 					onclick : 버튼, 이미지
 					onchange : select => 콤보박스 (선택이 변경된 경우)
 					onmouseover : 이미지, text
 					onmouseout 
 					onkeyup
 */
 let bCheck=false;
 function boardDelete()
{
		if(bCheck===false)
		{
			let btn=document.querySelector("#delBtn")
			btn.value='취소'
			let tr=document.querySelector("#delTr")
			tr.style.display=''
			bCheck=true;
		}
		else
		{
			let btn=document.querySelector("#delBtn")
			btn.value='삭제'
			let tr=document.querySelector("#delTr")
			tr.style.display='none'
			bCheck=false;	
		}
}
 
</script>

</head>
<body>

</body>
</html>