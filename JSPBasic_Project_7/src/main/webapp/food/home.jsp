<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<jsp:useBean id="dao" class="com.sist.dao.FoodDAO"></jsp:useBean>
<%
    // 출력할 데이터를 출력
    // 자바는 자신의 객체 => this , JSP => 자신의 객체 => page 
    String strPage=request.getParameter("page");
    if(strPage==null)
    	strPage="1";
    int curpage=Integer.parseInt(strPage);
    List<FoodVO> list=dao.foodListData(curpage);
    int totalpage=dao.foodTotalPage();
    
    
    // Cookie 읽기 
    Cookie[] cookies=request.getCookies();
    List<FoodVO> cList=new ArrayList<FoodVO>();
    if(cookies!=null)
    {
    	for(int i=cookies.length-1;i>=0;i--)
    	{ 
    		// getName() => key
    		// getValue() => 값
    		if(cookies[i].getName().startsWith("food_"))
    		{
    			// 값 읽기 
    			String fno=cookies[i].getValue();
    			FoodVO vo=dao.foodDetailData(Integer.parseInt(fno));
    			cList.add(vo);
    		}
    	}
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="row">
    <%
       for(FoodVO vo:list)
       {
    %>
          <div class="col-sm-3">
            <a href="../food/detail_before.jsp?fno=<%=vo.getFno()%>">
              <div class="thumbnail">
               <img src="<%=vo.getPoster() %>" style="width: 240px;height: 200px">
               <p class="a"><%=vo.getName() %></p>
              </div>
            </a>
          </div>
    <%
       }
    %>
  </div>
  <div style="height: 20px"></div>
  <div class="row">
    <div class="text-center">
      <a href="../main/main.jsp?page=<%=curpage>1?curpage-1:curpage %>" class="btn btn-sm btn-danger">이전</a>
      <%=curpage %> page / <%=totalpage %> pages
      <a href="../main/main.jsp?page=<%=curpage<totalpage?curpage+1:curpage %>" class="btn btn-sm btn-primary">다음</a>
    </div>
  </div>
  <div style="height: 20px"></div>
  <h3>최신방문 맛집</h3>
  <hr>
  	<a href="all_delete.jsp" class="btn btn-sm btn-success">전체 삭제</a>
  	<a href="all_view.jsp" class="btn btn-sm btn-info">전체 보기</a>
  <hr>
  <%--  <div class="row"> --%>
 
    <%
    	int i = 0;
       for(FoodVO vo:cList)   
       {
    	   if(i>8) break;
    %>
          <%--<div class="col-sm-2"> --%>
          <%-- --%>
            <a href="../main/main.jsp?mode=1&fno=<%=vo.getFno()%>">
              <figure style="float: left; margin-left:5px">
               <img src="<%=vo.getPoster() %>" style="width: 130px;height: 80px"
                title="<%=vo.getName() %>" class="img-rounded">
                	<figcaption style="margin:5px 30px">
                	 <a href="delete.jsp?no=<%=vo.getFno()%>" class="btn btn-xs btn-danger">삭제</a>
                	 </figcaption>
                	</figure>
             <%-- </div> --%>
              
            </a>
            <%-- </div> --%>
          
    <%
    	i++;
       }
    %>
  </div>
</body>
</html>


