package com.prj.nicarnaecar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prj.nicarnaecar.service.ProfitService;
import com.prj.nicarnaecar.service.SearchService;
import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.ProfitVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	@Qualifier("searchServiceImplXML")
	SearchService searchService;
	
	@Autowired
	@Qualifier("profitServiceImplXML")
	ProfitService profitService;
	
	@RequestMapping("/admin")
	public void admin() {
		
	}
	
	@RequestMapping("/delivery")
	public void deliveryCar(HttpServletRequest request) {
		List<BookingVO> list1 = searchService.deliverySearch();
		request.setAttribute("list1", list1);
	}
	@RequestMapping("/return")
	public void returnCar(HttpServletRequest request) {
		List<BookingVO> list2 = searchService.returnSearch();
		request.setAttribute("list2", list2);
	}
	
	@RequestMapping("/profit")
	public void profit(HttpServletRequest request) {
		List<ProfitVO> profitList = profitService.profitList();
		request.setAttribute("profitList", profitList);
	}
	
	@RequestMapping("/profitInsertOK")
	public String profitInsertOK(ProfitVO profitVO) {
		profitService.profitInsert(profitVO);
		return "redirect:/admin/profit";
	}
	
	@RequestMapping(value="/profitDeleteOK/{pnumber}")
	public String profitDeleteOK(@PathVariable int pnumber) {
		profitService.profitDelete(pnumber);
		return "redirect:/admin/profit";
	}
	
	@RequestMapping(value="/deliveryOK")
	public String deliveryOK(int bnumber) {
		searchService.deliveryCar(bnumber);
		return "redirect:/admin/delivery";
	}
	
	@RequestMapping(value="/returnOK")
	public String returnOK(int bnumber) {
		searchService.returnCar(bnumber);
		return "redirect:/admin/return";
	}
}