package com.prj.nicarnaecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("memberVO")
@Controller
public class MemberController {
	
	@RequestMapping(value = "/join")
	public String join() {
		return "member/join";
	}
}
