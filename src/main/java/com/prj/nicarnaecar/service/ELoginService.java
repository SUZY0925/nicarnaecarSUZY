package com.prj.nicarnaecar.service;

import com.prj.nicarnaecar.vo.EmployeeVO;
import com.prj.nicarnaecar.vo.LoginVO;

public interface ELoginService {
	public EmployeeVO getMember(LoginVO loginVO);
}
