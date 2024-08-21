package com.sist.model;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bouncycastle.cert.ocsp.Req;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

public class RecipeModel {
	// 리턴형 => String / void(Ajax이용=>화면이동X,값만 넘긴다...!!) : 데이터만 전송 
	//         ====== 화면이 변경될 때 사용 
	// main.jsp, _ok.do => redirect
	@RequestMapping("recipe/recipe_list.do")
	public String recipe_list(HttpServletRequest request, HttpServletResponse response)
	{
		// 어떤 데이터를 전송 
		String page = request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		Map map = new HashMap();
		map.put("start", (curpage*20)-19);
		map.put("end", curpage*20);
		
		List<RecipeVO> list = RecipeDAO.recipeListData(map);
		int count = RecipeDAO.recipeTotalCount();
		int totalpage=(int)(Math.ceil(count/20.0));
		
		// 블록별
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage = ((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalpage)
			endPage = totalpage;
		
		//데이터 전송
		request.setAttribute("recipeList", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("count", count);
		request.setAttribute("main_jsp", "../recipe/recipe_list.jsp");//main에 "recipe_list"를 띄워라
		return "../main/main.jsp";
	}
	
	@RequestMapping("recipe/recipe_detail.do")
	public String recipe_detail(HttpServletRequest request, HttpServletResponse response)
	{
		// 사용자의 요청정보를 받기 => ? 
		String no = request.getParameter("no");
		// 데이터 베이스 연동 
		RecipeDetailVO vo = RecipeDAO.recipeDetailData(Integer.parseInt(no));
		List<String> sList = new ArrayList<String>();
		List<String> iList = new ArrayList<String>();
		
		String[] temp = vo.getFoodmake().split("\n");
		fo(String fm:temp)
		{
			StringTokenizer st = new StringTokenizer(fm,"^");
			sList.add(st.nextToken());
			iList.add(st.nextToken());
		}
		
		request.setAttribute("vo", vo);
		request.setAttribute("foodList", foodList);
		
		
		request.setAttribute("main_jsp", "../recipe/recipe_detail.jsp");
		return"../main/main.jsp"; // _ok => redirect , void => ajax
	}
	
	@RequestMapping("recipe/chef_list.do")
	public String chef_list(HttpServletRequest request, HttpServletResponse response )
	{
		String page = request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize = 50;
		int start = (curpage*rowSize)-(rowSize-1);
		int end = curpage*rowSize;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<ChefVO> list = RecipeDAO.recipeChefListData(map);
		int totalpage=RecipeDAO.recipeChefTotalPage();
		
		request.setAttribute("chefList", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("curpage", curpage);
		//          | 데이터를 받아서 출력 !!!! 
		request.setAttribute("main_jsp", "../recipe/chef_list.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("recipe/chef_make.do")
	public String chef_make(HttpServletRequest request, HttpServletResponse response)
	{
		String chef = request.getParameter("chef");
		String page = request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start=(curpage*rowSize)-(rowSize-1);
		int end = curpage*rowSize;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		// 데이터베이스 연동
		List<RecipeVO> list = RecipeDAO.recipeChefMakeData(map);
		int totalpage = RecipeDAO.recipeChefMakeTotalPage(chef);
		
		request.setAttribute("chefList", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("chef", chef);
		
		request.setAttribute("main_jsp", "../recipe/chef_make.jsp");
		return "../main/main.jsp";
	}
}