package com.prj.nicarnaecar.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.nicarnaecar.service.SearchService;
import com.prj.nicarnaecar.vo.BookingVO;
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
}
