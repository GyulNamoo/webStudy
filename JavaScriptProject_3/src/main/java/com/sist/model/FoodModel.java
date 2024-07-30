package com.sist.model;
import java.net.http.HttpRequest;
/*
 * 		자바 스크립트  ==========> JSON을 받아서 html에 출력 => 동적
 *           |		=> JSOM
 *          자바
 *           |		=> SQL
 *           호환용 
 *           
 */
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;

public class FoodModel {
	private FoodDAO dao = FoodDAO.newInstance();
	// 1. 예약하기, 좋아요, 찜 , 아이디 중복체크, 우편번호 , 채팅, 검색 ...
	// 2. 탭, 모달
	@RequestMapping("food/food_find.do")
	public String food_find(HttpServletRequest request, HttpServletResponse response)
	{
		return "../food/food_find.jsp";
	}	
	// _js => javascript에서 데이터를 읽어 간다 => JSON제작
	@RequestMapping("food/food_find_js.do")
	public void food_find(HttpServletRequest request, HttpServletResponse response)
	{
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		String addr=request.getParameter("addr");
		if(addr==null)
			addr="마포";
		
		int curpage=Integer.parseInt(page);
		List<FoodVO> list=dao.foodFindTotalPage(addr);
		
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		if(endPage>totalpage)
			endPage=totalpage;
		
		int i=0;
		JSONArray arr=new JSONArray(); // List => RestFul
		for(FoodVO vo:list)
		{
			JSONObject obj = new JSONObject(); // VO fno,name,poster,address
			obj.put("fno", vo.getFno());
			obj.put("name", vo.getName());
			obj.put("poster", vo.getPoster().replace("http","https"));
			obj.put("address", vo.getAddress());
			if(i==0)
			{
				obj.put("curpage",curpage);
				obj.put("totalpage", totalpage);
				obj.put("startPage", startPage);
				obj.put("endPage", endPage);
			}
			arr.add(obj);
			i++;
		}
		try {
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println(arr.toJSONString());
		}catch(Exception ex) {}
	}
	
	@RequestMapping("food/food_detail_js.do")
	public void food_detail_js(HttpServletRequest request, HttpServletResponse response)
	{
		
	}
			
}
