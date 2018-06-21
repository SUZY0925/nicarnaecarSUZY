package com.prj.nicarnaecar.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

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

import com.prj.nicarnaecar.service.MemberService;
import com.prj.nicarnaecar.vo.MemberVO;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
		
	@Autowired
	@Qualifier("memberServiceImplXML")
	MemberService memberService;
	
	// 내 정보 페이지 접근
	@RequestMapping(value = "/myPage/{cemail:.+}")
	public String modify(@PathVariable String cemail, Model model) {
		model.addAttribute("memberVO",memberService.getMember(cemail));
		return "/mypage/myPage";
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
	
	@RequestMapping(value="/reservationCheck",method=GET)
	public String reservationCheck() {
		return "/mypage/reservationCheck";
	}
	
	@RequestMapping(value="/reservation",method=GET)
	public String reservation() {
		return "/mypage/reservation";
	}
}
