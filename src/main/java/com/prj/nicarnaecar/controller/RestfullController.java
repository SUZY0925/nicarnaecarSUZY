package com.prj.nicarnaecar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prj.nicarnaecar.service.MemberService;
import com.prj.nicarnaecar.vo.MemberVO;


@RestController
@Controller
public class RestfullController {
	
	@Autowired
	@Qualifier("memberServiceImplXML")
	MemberService memberService;
	
	// 아이디 찾기
		@RequestMapping("/findID")
		public String findID(@ModelAttribute("find") MemberVO find,BindingResult result, Model model){
			if(result.hasErrors()) {
				return "redirect:/";	
			}else {
				MemberVO memberVO = memberService.findID(find);
					return memberVO.getCemail();
			}
		}

		// 비밀번호 찾기
		@RequestMapping("/findPW")
		public String findPW(@ModelAttribute("find") MemberVO find,BindingResult result, Model model){
			if(result.hasErrors()) {
				return "redirect:/";	
			}else {
				MemberVO memberVO = memberService.findPW(find);
					return memberVO.getCpasswd();
				}
		}
			
}
