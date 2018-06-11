package com.prj.nicarnaecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@Controller
public class RestfullController {
	
	/*@RequestMapping("/findID")
	public String T_findIdOK(@RequestParam("name") String name, @RequestParam("phone") String phone, Model model) {
		model.addAllAttributes("id",memberService.findID(name, phone));
	return "/member/findId";	
	}*/
	
	/*// 아이디 찾기
		@RequestMapping("/findID")
		public String findID(@ModelAttribute("find") MemberVO find,BindingResult result, Model model){
			if(result.hasErrors()) {
				return "redirect:/";	
			}else {
				MemberVO memberVO = memberService.findID(find);
					return memberVO.getId();
			}
		}

		// 비밀번호 찾기
		@RequestMapping("/findPW")
		public String findPW(@ModelAttribute("find") MemberVO find,BindingResult result, Model model){
			if(result.hasErrors()) {
				return "redirect:/";	
			}else {
				MemberVO memberVO = memberService.findPW(find);
					return memberVO.getPasswd();
				}*/
			
}
