package com.sist.vo;

import java.util.*;

import lombok.Data;

@Data
public class CartVO {
	private int cno,gno,type,account,price;
	private String id,isbuy,dbday;
	private Date regdate;
}
