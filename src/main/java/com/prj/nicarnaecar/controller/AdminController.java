package com.prj.nicarnaecar.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prj.nicarnaecar.service.EmployeeService;
import com.prj.nicarnaecar.service.ProfitService;
import com.prj.nicarnaecar.service.SearchService;
import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.EmployeeVO;
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
	
	@Autowired
	@Qualifier("employeeServiceImplXML")
	EmployeeService employeeService;
	
	@RequestMapping("/admin")
	public void admin() {
		
	}
	
	@RequestMapping("/delivery")
	public void deliveryCar(HttpServletRequest request) {
		searchService.deliverySearch(request);
	}
	@RequestMapping("/return")
	public void returnCar(HttpServletRequest request) {
		searchService.returnSearch(request);
	}
	
	
	@RequestMapping("/profit")
	public void profit(HttpServletRequest request) {
		profitService.profitList(request);
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
	
	
	
	
	@RequestMapping(value="/deliveryOK/{bnumber}")
	public String deliveryOK(@PathVariable int bnumber) {
		searchService.deliveryCar(bnumber);
		return "redirect:/admin/delivery";
	}
	
	@RequestMapping(value="/returnOK", method=POST)
	public String returnOK(BookingVO bookingVO) {
		searchService.returnCar(bookingVO);
		return "redirect:/admin/return";
	}
	
	/*@RequestMapping(value="/employees")
	public String employees(HttpServletRequest request) {
		List<EmployeeVO> list = employeeService.Elist();
		request.setAttribute("employees", list);
		return "admin/employees";
	}
	*/
	@RequestMapping(value="/employees")
	public void employees(HttpServletRequest request) throws Exception {
		employeeService.Elist(request);
	}
	
	
   @RequestMapping(value="/insert",method=RequestMethod.POST)
   public String insert(EmployeeVO employeeVO, BindingResult result) {
      if(result.hasErrors()) {
         return "/admin/employees";
      }else {
         employeeService.Einsert(employeeVO);
         return "redirect:/admin/employees";
      }
   }
   
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String update(EmployeeVO employeeVO, BindingResult result) {
		if(result.hasErrors()) {
			return "/admin/employees";
		}else {
			employeeService.EUpdate(employeeVO);
			return "redirect:/admin/employees";
		}
	}
}