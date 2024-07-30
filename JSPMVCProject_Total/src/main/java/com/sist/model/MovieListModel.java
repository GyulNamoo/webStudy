package com.sist.model;

import java.util.*;

import com.sist.manager.MovieManager;

/*
 *  관련 클래스가 많은 경우 : 한개로 모아서 처리 => 인터페이스
 *  
 *  1. 여러개 => 한개로 묶음
 *     변수 여러개 => 배열 
 *     클래스 여러개 => 인터페이스 
 *  2. 메소드 여러개 => 구분자 (임의로 결정, 제공하는 구분자)
 *                        ========
 *                        1. a()
 *                        2. b()
 *                        3. c()  ... (가독성 떨어진다)
 *                                     ==== 어노테이션 
 *  3. 재사용, 확장성, 가독성 , 최적화 
 *     ========================
 *     int a~z;
 */
public class MovieListModel implements Model{
	String title="";
	String type = request.getParameter("type");
	if(type==null)
		type="1";
	int index=Integer.parseInt(type);
	if(index==1)
	{
		title="일별 벅스오피스";
	}else if(index==2)
	{
		title="실시간 예매율";
	} else if(index==3)
	{
		title="좌석 점유율";
	}
	MovieManager mm = new MoieManager();
	List<MovieVO> list = mm.movieListData(index);
	request.setAttribute("list",list);
	request.setAttribute("title",title);
	return "../movie/list.jsp";
	

}
