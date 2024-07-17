package com.sist.dao;

import java.sql.Date;

import lombok.Data;

@Data
public class DiaryVO {
	private int no,year,month,day;
	private String id,subject,msg,dbday;
	private Date regdate;
}
