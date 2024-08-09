<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$('.dataTr').click(function(){
		let mno=$(this).attr("data-mno")
		// alert("선택된 번호:"+mno)
		// Ajax => 데이터를 읽어 온다
		$.ajax({
			type:'post',
			url:'../music/detail.do',
			data:{'mno':mno},
			success:function(result)
			{
				$('#movie').attr("src","http://yotube.com/embed/"+result);
				$('##dialog').dialog({
						
				})
			}
			
		})
	})
})
</script>
</head>
<body>

</body>
</html>