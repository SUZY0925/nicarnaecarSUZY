package com.prj.nicarnaecar.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	
	@RequestMapping(value="/reservationCheck",method=GET)
	public String reservationCheck() {
		return "/reservation/reservationCheck";
	}
	
	
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
	
	@RequestMapping(value="/reservationOK", method=POST)
	public String reservationOK(BookingVO bookingVO) {
		bookingService.bookingInsert(bookingVO);
		return "/reservation/myPage";
	}
	
	
	
	
	@Autowired
	@Qualifier("memberServiceImplXML")
	MemberService memberService;
	
// 내 정보 페이지 접근
	@RequestMapping(value = "/{cemail:.+}")
	public String modify(@PathVariable String cemail, Model model) {
		model.addAttribute("memberVO",memberService.getMember(cemail));
		return "/reservation/myPage";
	}
	
	@RequestMapping(value="/modifyOK", method = RequestMethod.POST)
	public String memberModifyOK(@Valid MemberVO memberVO, BindingResult result) {
		if(result.hasErrors()) {
			return "/";
		}else {
			memberService.memberUpdate(memberVO);
			return "redirect:/";
		}
	}
}
