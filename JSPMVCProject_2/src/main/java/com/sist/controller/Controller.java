package com.sist.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.model.*;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map clsMap=new HashMap();
   
    public void init(ServletConfig config) throws ServlertException {
        // TODO Auto-generated constructor stub
    	clsMap.put("list.do", new InsertModel());
    	clsMap.put("insert.do", new InsertModel());
    	clsMap.put("update.do", new UpdateModel());
    	clsMap.put("delete.do", new DeleteModel());
    	
    	try
    	{
    		DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
    		DocumentBuilder db = dbf.newDocumentBuilder();
    		// 파서기 => 파서 (XML,HTML,JSON) => 데이터를 추출
    		Document doc = db.parse(new File("C:\\webDev\\webStudy\\JSPMVCProject_2\\src\\main\\webapp\\WEB-INF\\application.xml"));
    		// 루트 얻기 => beans
    		Element root=doc.getDocumentElement("bean");
    		System.out.println("root:");
    		
    		NodeList list=root.getElementsByTagName("bean");
    		for(int i=0; i<list.getLength(); i++)
    		{
    			Element bean=(Element)list.item(1);
    			String id = bean.getAttribute("id");
    			String cls=bean.getAttribute("class");
    			System.out.println("id+"+cls);
    			// 메모리 할당
    			Class clsName=Class.forName(cls);
    			Object obj=clsName.getDeclaredConstructor().newInstance();
    			clsMap.put(id, obj);
    		}
    	}catch(Exception ex) {}
    }

		
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd=request.getRequestURI();
		// *.do
		cmd=cmd.substring(request.getContextPath().length()+1);
		
		Model moel=(Model)clsMap.get(cmd);
		String jsp=model.execute(request);
		
		RequestDispatcher rd = request.getRequestDispatcher(jsp);
		re.forward(request,response);
			
	}

}
