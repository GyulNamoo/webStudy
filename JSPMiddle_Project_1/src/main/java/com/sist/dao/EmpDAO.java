package com.sist.dao;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;


public class EmpDAO {
		private Connection conn;
		// AWS => 프로젝트 => 실행 => 어떤 위치든 상관없이 실행이 가능 
	private PreparedStatement ps;
	private static EmpDAO dao;
	
	
	//싱글턴
	public static EmpDAO newInstance()
	{
		if(dao==null)
			dao=new EmpDAO();
		return dao;
	}
	
	
	public void getConnection()
	{
		// 미리 오라클 연결해서 저장된 Connection의 주소를 얻어 온다 
		try {
			// 1. POOL에 연결 => JNDR (Java Naming Directory Interface)
			// 이름 형식으로 탐색기를 제작  
			Context init = new InitialContext(); // 탐색기 열기
			Context c=(Context)init.lookup("java://comp//env"); // C드라이버에 접근
			DataSource ds=(DataSource)c.lookup("jdbc/oracle"); // 원하는 폴더 선택 
			conn=ds.getConnection(); // 파일을 읽기 (주소 얻기)
		} catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	public void disConnection()
	{
		// 반환 => 사용후에 반환 
			try {
				if(ps!= null) ps.close();
				if(conn!=null) conn.close();
				
			}catch(Exception ex) {
				ex.printStackTrace();
			}
		}
		public List<EmpVO> empListData()
		{
			List<EmpVO> list=new ArrayList<EmpVO>();
			try {
				while(rs.next())
				{
					EmpVO.vo=new EmpVO();
					vo.setEmpno(rs.getInt);
					vo.setEname(rs.getString(2));
					vo.setJob(rs.)
					
					list.add(vo);
				}
			}catch(Exception ex)
			{
				
			}
			
	}
}


