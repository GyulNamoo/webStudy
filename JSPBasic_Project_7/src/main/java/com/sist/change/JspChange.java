package com.sist.change;

public class JspChange {
	private String[] jsp= {"../main/home.jsp",
				"../food/detail.jsp",
				"../store/store.jsp",
				"../store/store.jsp" };
	
	public String change(int no) {
		return jsp[no];
	}
		

}