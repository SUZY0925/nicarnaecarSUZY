package com.prj.nicarnaecar.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.prj.nicarnaecar.service.MemberService;
import com.prj.nicarnaecar.vo.MemberVO;

@SessionAttributes("memberVO")
@Controller
public class MemberController {
	
	@Autowired
	@Qualifier("memberServiceImplXML")
	MemberService memberService;
	
	// 회원가입
	@RequestMapping(value = "/join")
	public String memberJoin(Model model, HttpSession session) {
		
		model.addAttribute("memberVO",new MemberVO());
		return "member/join";
	}
	
	@RequestMapping(value = "/memberJoinOK", method = RequestMethod.POST)
	public String memberJoinOK(@Valid MemberVO memberVO, BindingResult result) {
		if(result.hasErrors()) {
			return "/join";
		}else {
			memberService.memberInsert(memberVO);
			return "redirect:/";
		}
	}

}
