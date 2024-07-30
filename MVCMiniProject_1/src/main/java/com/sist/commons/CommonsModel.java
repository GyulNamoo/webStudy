package com.sist.commons;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.*;

public class CommonsModel {
	public static void commonsData(HttpServletRequest request, HttpServletResponse response)
	{
		FoodDAO fDao = FoodDAO.newInstance();
		List<FoodVO> foodList=fDao.foodFoodterData();
		request.setAttribute("foodList", foodList);
	}
}
