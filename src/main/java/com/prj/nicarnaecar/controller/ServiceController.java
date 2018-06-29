package com.prj.nicarnaecar.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj.nicarnaecar.service.ServiceService;
import com.prj.nicarnaecar.vo.FaqVO;
import com.prj.nicarnaecar.vo.NoticeVO;

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
	
	@RequestMapping(value="/noticeWrite")	// get방식일 경우 return으로 경로 설정 안해줘도 RequestMapping으로 알아서감~
	public void noticeWrite(Model model) {
		model.addAttribute("notice", new NoticeVO());
	}
	
	@RequestMapping(value="/noticeWrite", method=POST) 
	public String noticeWriteOK(NoticeVO noticeVO) {
		serviceService.noticeInsert(noticeVO);
		return "redirect:/service/notice";
	}
	
	@RequestMapping(value="/noticeModifyOK", method=POST)
	public String noticeModifyOK(NoticeVO noticeVO) {
		serviceService.noticeModify(noticeVO);
		return "redirect:/service/notice";
	}
	@RequestMapping(value="/noticeDelete")
	public String noticeDelete(int nnumber) {
		serviceService.noticeDelete(nnumber);
		return "redirect:/service/notice";
	}
	
	
	
	@RequestMapping(value = "/oneonone")
	public String oneonone() {
		return "/service/oneonone";
	}
	
	
	@RequestMapping(value = "/faq")
	public String faq(Model model) {
		model.addAttribute("faq", serviceService.faqList());
		return "service/faq";
	}
	
	@RequestMapping(value = "/faqWrite")
	public void faqWrite(Model model) {
		model.addAttribute("faq",new FaqVO());
	}
	
	@RequestMapping(value = "/faqWrite", method=POST)
	public String faqWriteOK(FaqVO faqVO) {
		serviceService.faqInsert(faqVO);
		return "redirect:/service/faq";
	}
	
	@RequestMapping(value = "/faqModify/{fnumber}")
	public String faqModify(@PathVariable int fnumber, Model model) {
		FaqVO faqVO = new FaqVO();
		faqVO = serviceService.faqView(fnumber);
		
		model.addAttribute("faq", faqVO);
		return "/service/faqModify";
	}
	
	@RequestMapping(value = "/faqModifyOK", method=POST)
	public String faqModifyOK(FaqVO faqVO) {
		serviceService.faqModify(faqVO);
		return "redirect:/service/faq";
	}
	
	@RequestMapping(value = "/faqDelete")
	public String faqDelete(int fnumber) {
		serviceService.faqDelete(fnumber);
		return "redirect:/service/faq";
	}
	
	
}
