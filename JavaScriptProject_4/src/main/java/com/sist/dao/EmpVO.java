package com.sist.dao;
import java.util.*;
// => MyBatis : 컬럼명과 반드시 일치 => 변경 

import lombok.Data;

@Data
public class EmpVO {
	private int empno,sal,comm,deptno,mgr;
	private String ename,job;
	private Date hiredate;
}
