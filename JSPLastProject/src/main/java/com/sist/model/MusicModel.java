package com.sist.model;
import com.sist.dao.*;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class MusicModel {

	
	@RequestMapping("music/detail.do")
	public void music_detail(HttpServletRequest request,HttpServletResponse response)
	{
		String mno=request.getParameter("mno");
		// 데이터베이스 연동
		String key=MusicDAO.musicDetailData(Integer.parseInt(mno));
		// Ajax 값 전송
		try {
			PrintWriter out=response.getWriter();
			out.write(key);
		}catch(Exception ex) {}
		
	}
	
}
