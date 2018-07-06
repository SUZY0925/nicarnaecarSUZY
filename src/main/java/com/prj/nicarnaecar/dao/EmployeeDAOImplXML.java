package com.prj.nicarnaecar.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.EmployeeVO;

@Repository
public class EmployeeDAOImplXML implements EmployeeDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<EmployeeVO> Elist() {
		return sqlSession.selectList("EmemberList");
	}

	@Override
	public void EUpdate(EmployeeVO employeeVO) {
		sqlSession.update("EUpdate",employeeVO);
	}

	@Override
	public void Einsert(EmployeeVO employeeVO) {
		sqlSession.insert("EInsert", employeeVO);
	}

}
