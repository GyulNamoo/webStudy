package com.sist.model;
import com.sist.controller.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class GoodsModel {
	@RequestMapping("goods/detail.do")
	public String goods_detail(HttpServletRequest request,HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../goods/list.jsp");
		return "../main/main.jsp";
	}
}
