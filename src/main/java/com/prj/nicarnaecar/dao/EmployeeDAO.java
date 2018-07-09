package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.util.RecordCriteria;
import com.prj.nicarnaecar.vo.EmployeeVO;

public interface EmployeeDAO {
	//직원리스트 불러오기
	public List<EmployeeVO> Elist();
	public List<EmployeeVO> Elist(RecordCriteria recordCriteria);
	int ECount();
	
	//직원정보 변경
	public void EUpdate(EmployeeVO employeeVO);
	
	//직원추가
	public void Einsert(EmployeeVO employeeVO);
	
}
