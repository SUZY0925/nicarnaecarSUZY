package com.prj.nicarnaecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/search")
public class SearchController {
	
	@RequestMapping(value = "/dateSearch")
	public String dateSearch() {
		return "search/dateSearch";
	}
	
	@RequestMapping(value = "/vehicleSearch")
	public String vehicleSearch() {
		return "search/vehicleSearch";
	}
}
