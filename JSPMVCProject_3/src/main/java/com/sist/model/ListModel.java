package com.sist.model;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.sist.dao.*;
/*
 * <%
 * 			String strPage=request.getParameter("page");
 * 			if(strPage==null)
 * 					strPage="1"; 	=> 메소드로 이동 
 * %>
 */
public class ListModel implements Model{
	@Override
		public String execute(HttpServletRequest request) {
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		
		int curpage=Integer.parseInt(page);
		BoardDAO dao = BoardDAO.newInstance();
		
		List<BoardVO> list=dao.boardListData(curpage);
		//출력에 필요한 데이터를 전송
		int count = dao.boardRowCount();
		count=count-((curpage*10)-10);
		int totalpage=(int)(Math.ceil(count/10.0));
		request.setAttribute("count", count);
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		return "board/list.jsp";
	}
}
