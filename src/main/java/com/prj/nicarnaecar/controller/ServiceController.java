package com.prj.nicarnaecar.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj.nicarnaecar.service.ServiceService;
import com.prj.nicarnaecar.vo.FaqVO;

@Controller
@RequestMapping("/service")
public class ServiceController {
	
	@Autowired
	@Qualifier("serviceServiceImplXML")
	ServiceService serviceService;
	
	@RequestMapping(value = "/notice")
	public String notice(Model model) {
		model.addAttribute("notice", serviceService.noticeList());
		return "/service/notice";
	}
	
	@RequestMapping(value="/noticeView")
	public void noticeView(@RequestParam int nnumber, Model model) {
		model.addAttribute("view",serviceService.noticeView(nnumber));
	}
	
	@RequestMapping(value = "/oneonone")
	public String oneonone() {
		return "/service/oneonone";
	}
	
	@RequestMapping(value = "/faq")
	public String faq(Model model) {
		model.addAttribute("faq", serviceService.faqList());
		return "/service/FAQ";
	}
}
