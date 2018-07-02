package com.prj.nicarnaecar.dao;

import com.prj.nicarnaecar.vo.ESecurityLoginVO;
import com.prj.nicarnaecar.vo.EmployeeVO;

public interface ELoginDAO {
	public EmployeeVO getMember(ESecurityLoginVO employeeSLoginVO);
}
