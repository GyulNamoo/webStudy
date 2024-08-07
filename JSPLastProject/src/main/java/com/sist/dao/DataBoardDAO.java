package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
public class DataBoardDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	// 기능
	public static void databoardInsert(DataBoardVO vo)
	{
		SqlSession session=null;
		  try
		  {
			  session=ssf.openSession(); 
			  session.insert("databoardInsert",vo);
			  
		  }catch(Exception ex)
		  {
			  ex.printStackTrace();
		  }
		  finally
		  {
			  if(session!=null)
				  session.close(); // 반환 (DBCP사용)
		  }
	}
	public static List<DataBoardVO> databoardListData(Map map)
	{
		List<DataBoardVO> list = 
	}
}
