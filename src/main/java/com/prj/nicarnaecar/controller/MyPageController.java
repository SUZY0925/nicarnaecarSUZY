package com.prj.nicarnaecar.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
		
	@RequestMapping(value="/myPage",method=GET)
	public String myPage() {
		return "/mypage/myPage";
	}
	
	@RequestMapping(value="/reservationCheck",method=GET)
	public String reservationCheck() {
		return "/mypage/reservationCheck";
	}
	
	@RequestMapping(value="/reservation",method=GET)
	public String reservation() {
		return "/mypage/reservation";
	}
}
