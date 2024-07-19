package com.sist.dao;
import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;

public class FoodDAO {
	  private Connection conn;
	  private PreparedStatement ps;
	  private static FoodDAO dao;
	  
	  public static FoodDAO newInstance()
	  {
		  if(dao==null)
			  return dao;
	  }
	  // 목록 출력
	  public List<FoodVO> foodListData(int page)
	  {
		  List<FoodVO> list=new ArrayList<FoodVO>();
		  try {
			  
		  }catch(Exception ex)
		  {
			  
		  }finally
		  {
			  disConnection();
		  }
	  }   
	  public int foodTotalPage()
	  {
		  int total=0;
		  try
		  {
			  getConnection();
			  String sql="SELECT CEIL(COUNT(*)/12.0) FROM food_house ";
			  ps = conn.prepareStatement(sql);
			  ResultSet rs = ps.executeQuery();
			  rs.next();
			  total=rs.getInt(1);
			  rs.close();		  
		  }
		  catch(Exception ex)
		  {
			  ex.printStackTrace();
		  }
		  finally {
			  disConnection();
		  }
		  return total;
	  }
	  
}
