package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.dao.*;

public class MusicDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	public static String musicDetailData(int mno)
	{
		String key="";
		SqlSession session=null;
		try {
			session=ssf.openSession();
			key=session.selectOne("musicDetailData",mno);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			
		}
		return key;
	}
}
