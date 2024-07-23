package com.sist.dao;
import java.util.*;
import java.sql.*;
import javax.sql.*;

import com.sist.dao.*;
/*
 *  이름                                      널?      유형
 ----------------------------------------- -------- ----------------------------
 NO                                        NOT NULL NUMBER(38)
 GOODS_NAME                                         VARCHAR2(4000)
 GOODS_SUB                                          VARCHAR2(4000)
 GOODS_PRICE                                        VARCHAR2(26)
 GOODS_DISCOUNT                                     NUMBER(38)
 GOODS_FIRST_PRICE                                  VARCHAR2(26)
 GOODS_DELIVERY                                     VARCHAR2(26)
 GOODS_POSTER                                       VARCHAR2(4000)
 HIT                                                NUMBER(38)
 */

public class GoodsDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static GoodsDAO dao;
	private DbcpConnection dbConn=new DbcpConnection();
	
	public static GoodsDAO newInstance()
	{
		if(dao==null)
			dao = new GoodsDAO();
		return dao;
	}
	
	public List<GoodsVO> goodsListData(int page)
	{
		List<GoodsVO> list = new ArrayList<GoodsVO>();
		try {
			conn=dbConn.getConnection();
			String sql = "SELECT no,name,sub,price,discount,first_price,delivery,poster,num "
					+"FROM (SELECT no,name,sub,price,discount,first_price,delivery,poster,rownum as num "
					+"FROM (SELECT no,name,sub,price,discount,first_price,delivery,poster "
					+"FROM goods_all Oreder BY no DESC)) "
					+"WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			
			int rowSize = 20;
			int start = (rowSize*page)-(rowSize-1);
			int end = rowSize*page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				GoodsVO vo = new GoodsVO();
				vo.setNo(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setSub(rs.getString(3));
				vo.setPrice(rs.getString(4));
				vo.setDiscount(rs.getInt(5));
				vo.setFirst_price(rs.getString(6));
				vo.setDelevery(rs.getString(7));
				vo.setPoster(rs.getString(8));
				
				list.add(vo);
			}
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return list;
	}
	public int goodsTotalPage()
	{
		int total=0;
		try {
			conn=dbConn.getConnection();
			String sql = "SELECT CEIL(COUNT(*)/20.0) FROM goods_all";
			ps=conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			rs.close();
		}catch(Exception ex) 
		{
			ex.printStackTrace();
		}
		finally 
		{
			dbConn.disConnection(conn, ps);
		}
		return total;
		
	}
	public GoodsVO goodsDetailData(int no) {
		
		GoodsVO vo = new GoodsVO();
		try {
			conn=dbConn.getConnection();
			String sql = "SELECT no,name,sub,price,discount,first_price,delivery,poster "
					+"FROM goods_all "
					+"WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			vo.setNo(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setSub(rs.getString(3));
			vo.setPrice(rs.getString(4));
			vo.setDiscount(rs.getInt(5));
			vo.setFirst_price(rs.getString(6));
			vo.setDelevery(rs.getString(7));
			vo.setPoster(rs.getString(8));
			rs.close();
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return vo;
	}
		
}

