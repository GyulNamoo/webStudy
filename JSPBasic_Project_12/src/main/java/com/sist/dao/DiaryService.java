package com.sist.dao;
/*
 * 	table => VO, DAO
 * 	==== table 여러개 혼합 사용 => Service
 * 							 ======= board / reply
 *                           ======= food / jjim / like
 *  C/S => 네트워크 통신 
 *                            
 *  			 request(JSP)
 *  브라우저      ===============> 서버
 *             <===============
 *               response(HTML) => 메모리를 읽어 간다 
 *               
 *                 SQL 문장 PreparedStatement => OutputStream , BufferedReader
 *  클라이언트     ================> 오라클
 *  		   <===============
 *  			  실제 저장된 데이터 	             
 */
import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class DiaryService {
	private Connection conn;
	private PreparedStatement ps;
	private static DiaryService dao;
	
	public static DiaryService newInstance()
	{
		if(dao==null)
			dao=new DiaryService();
		return dao;
	}
	
	// 미리 톰캣에 의해 생성된 Conncetion 주소를 얻어 온다
	/*
	 *  => JNDI => new InitialContext() 
	 * ================== java://comp//env ================
	 * 		  ====================================
	 * 		    new Connection() false jdbc/oracle
	 * 		  =====================================
	 * 			new Connection() false jdbc/oracle
	 * 		  =====================================
	 * 
	 * =================================================
	 */
	public void getConnection()
	{
		try {
			Context init = new InitialContext();
			Context c = (Context)init.lookup("java://comp/env");
			DataSource ds = (DataSource)c.lookup("jdbc/oracle");
			conn=ds.getConnection();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	// 다시 Connection 관리 영역(POOL) 으로 반환 => 연결에 소모되는 시간을 절약하기 위해서 
	// Connection을 일정하게 관리 할 수 있다 
	public void disConnection()
	{
		try
		{
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}
		catch(Exception ex) {}
	}
	// 1. 로그인 => 세션 사용 => 사용자 정보 저장
	// JSP => 변경이 많다 ( 일반 HTML => AJAX => VUE => REACT = REDUX = REACT - QUERY 
	// 자바 => 변경이 없다 (스프링)
	public MemberVO isLogin(String id,String pwd)// Ajax
	{
		MemberVO vo = new MemberVO();
		try {
			getConnection();
			// 1. 아이디 존재 여부 확인
			String sql = "SELECT COUNT(*) FROM member "
					+"WHERE id='?"+id+"'";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id); // hong
			// 실행 결과 
			ResultSet rs = ps.executeQuery();
			rs.next(); // 데이터 출력 위치로 커서 => 이동 
			int count = rs.getInt(1);
			rs.close();
			
			if(count==0) // ID가 없는 상태
			{
				vo.setMsg("NOID");
			}
			else // ID가 존재하는 상태
			{
			// 2. 비밀번호 확인
				String sq="SELECT pwd,name,sex FROM member "
						+"WHERE id=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				
				rs=ps.executeQuery();
				rs.next();
				String db_pwd=rs.getString(1);
				String name=rs.getString(2);
				String sex=rs.getString(3);
				rs.close();
				
				if(db_pwd.equals(pwd)) // 로그인 
				{
					vo.setId(id);;
					vo.setName(name);
					vo.setSex(sex);
					vo.setMsg("OK");
				}
				else // 비밀번호가 틀린 상태 
				{
					vo.setMsg("NOPWD");
				}
			}
			 
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally {
			disConnection(); // 반환(재사용)
		}
		return vo;
	}
	/*
	 * 		로그인 => 매개변수 => id,pwd => 사용자가 입력하거나 클릭 
	 * 					     ====== 사용자 전송 
	 * 				리턴형 => 결과값
	 *              ==== 경우의 수 => 경우의 수 1 => List/VO/int
	 *              			   경우의 수 2 => boolean 
	 *              			   경우의 수 여러개 => String 
	 * 
	 */
	// 2. 일정관리 : 아이디 별로 
	// 3. 장바구니 : 세션 => 제공하는 메소드 정리 
}
