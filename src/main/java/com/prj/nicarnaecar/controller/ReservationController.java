package com.prj.nicarnaecar.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.Principal;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prj.nicarnaecar.service.BookingService;
import com.prj.nicarnaecar.service.MemberService;
import com.prj.nicarnaecar.service.SearchService;
import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.MemberVO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
		
	@Autowired
	@Qualifier("searchServiceImplXML")
	SearchService searchService;
	
	// 예약 전 총 정리?
	@RequestMapping(value="/reservation/{vnumber}/{bin}/{bout}",method=GET)
	public String reservation(@PathVariable String vnumber, @PathVariable Date bin, @PathVariable Date bout, Model model) {
		VehicleVO vehicleVO  = searchService.reservationView(vnumber);
		model.addAttribute("vehicleVO", vehicleVO);
		BookingVO bookingVO = new BookingVO();
		bookingVO.setBin(bin);
		bookingVO.setBout(bout);
		model.addAttribute("bookingVO", bookingVO);
		return "/reservation/reservation";
	}
	
	
	@Autowired
	@Qualifier("bookingServiceImplXML")
	BookingService bookingService;
	
	
	@RequestMapping(value="/reservationCheck",method=GET)
	public String reservationCheck(Principal principal, Model model) {
		String cemail = principal.getName();
		model.addAttribute("booking",bookingService.bookingView(cemail));
		return "/reservation/reservationCheck";
	}
	
	@RequestMapping(value="/reservationOK", method=POST)
	public String reservationOK(Principal principal, BookingVO bookingVO) {
		String cemail = principal.getName();
		bookingVO.setCemail(cemail);
		bookingService.bookingInsert(bookingVO);
		return "redirect:/reservation/reservationCheck";
	}
	
	@RequestMapping(value="/cancel/{bnumber}")
	public String reservationCancel(@PathVariable int bnumber) {
		bookingService.bookingCancel(bnumber);
		return "redirect:/reservation/reservationCheck";
	}
	@RequestMapping(value="/extend/{vnumber}/{bout}")
	public String reservationExtend(@PathVariable String vnumber,@PathVariable Date bout, Model model) {
		BookingVO bookingVO = new BookingVO();
		System.out.println("날짜1 : " + bookingVO.toString());
		bookingVO = bookingService.bookingExtend(vnumber, bout);
		System.out.println("날짜2 : " + bookingVO.toString());
		return "redirect:/reservation/extend";
	}
	
	
	
	@Autowired
	@Qualifier("memberServiceImplXML")
	MemberService memberService;
	
// 내 정보 페이지 접근
	@RequestMapping(value = "/myPage")
	public String modify(Principal principal, Model model) {
		String cemail = principal.getName();
		model.addAttribute("memberVO",memberService.getMember(cemail));
		return "/reservation/myPage";
	}
	
	@RequestMapping(value="/modifyOK", method = RequestMethod.POST)
	public String memberModifyOK(@Valid MemberVO memberVO, BindingResult result) {
		if(result.hasErrors()) {
			return "/";
		}else {
			memberService.memberUpdate(memberVO);
			return "redirect:/reservation/myPage/"+memberVO.getCemail();
		}
	}
}
