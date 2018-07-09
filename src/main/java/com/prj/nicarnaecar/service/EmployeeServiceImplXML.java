package com.prj.nicarnaecar.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.EmployeeDAO;
import com.prj.nicarnaecar.util.PageCriteria;
import com.prj.nicarnaecar.util.RecordCriteria;
import com.prj.nicarnaecar.vo.EmployeeVO;
import com.prj.nicarnaecar.vo.ProfitVO;

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

	@Override
	public List<EmployeeVO> Elist(RecordCriteria recordCriteria) {
		return employeeDAO.Elist(recordCriteria);
	}

	@Override
	public void Elist(HttpServletRequest request) {
		int reqPage = 0;
		if (request.getParameter("reqPage") == null || request.getParameter("reqPage") == "") {
			reqPage = 1;
		} else {
			reqPage = Integer.parseInt(request.getParameter("reqPage"));
		}

		RecordCriteria rc = new RecordCriteria(reqPage);
		List<EmployeeVO> list = Elist(rc);
		int totalRec = ECount();
		PageCriteria pc = new PageCriteria(rc,totalRec);
					
		request.setAttribute("list", list);
		request.setAttribute("page", pc);
	}

	@Override
	public int ECount() {
		return employeeDAO.ECount();
	}

}