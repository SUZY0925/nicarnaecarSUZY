package com.prj.nicarnaecar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.EmployeeDAO;
import com.prj.nicarnaecar.vo.EmployeeVO;

@Service
public class EmployeeServiceImplXML implements EmployeeService {
	
	@Autowired
	@Qualifier("employeeDAOImplXML")
	EmployeeDAO employeeDAO;
	
	@Override
	public List<EmployeeVO> Elist() {
		return employeeDAO.Elist();
	}

	@Override
	public void EUpdate(EmployeeVO employeeVO) {
		employeeDAO.EUpdate(employeeVO);
	}

	@Override
	public void Einsert(EmployeeVO employeeVO) {
		employeeDAO.Einsert(employeeVO);
	}

}
