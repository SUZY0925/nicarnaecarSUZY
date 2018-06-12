package com.prj.nicarnaecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class ServiceController {
	
	@RequestMapping(value = "/notice")
	public String notice() {
		
		return "service/notice";
	}
}
