package com.prj.nicarnaecar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.nicarnaecar.service.SearchService;
import com.prj.nicarnaecar.vo.VehicleVO;

@Controller
@RequestMapping(value = "/search")
public class SearchController {
	
	@Autowired
	@Qualifier("searchServiceImplXML")
	SearchService searchService;
	
	@RequestMapping(value = "/dateSearch")
	public String dateSearch() {
		return "search/dateSearch";
	}
	
	@RequestMapping(value = "/vehicleSearch")
	public String vehicleSearch(HttpServletRequest request) {
		List<VehicleVO> list = null;
		list = searchService.AllVehicleList();
		
		request.setAttribute("list", list);
		return "search/vehicleSearch";
	}
	
	
}
