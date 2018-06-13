package com.prj.nicarnaecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.prj.nicarnaecar.vo.MemberVO;

@SessionAttributes("memberVO")
@Controller
public class MemberController {
	
	@RequestMapping(value = "/join")
	public String join(Model model) {
		return "member/join";
	}
}
