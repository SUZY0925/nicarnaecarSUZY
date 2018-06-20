package com.prj.nicarnaecar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.SearchDAO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Service
public class SearchServiceImplXML implements SearchService {

	@Autowired
	@Qualifier("searchDAOImplXML")
	SearchDAO searchdao;
	
	@Override
	public List<VehicleVO> VehicleList() {
		return searchdao.VehicleList();
	}

}
