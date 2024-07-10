package com.sist.dao;

public class JspChange {
	private String[] jsp= {"../main/home.jsp",
				"../food/detail.jsp"};
	
	public String change(int no) {
		return jsp[no];
	}
		

}
