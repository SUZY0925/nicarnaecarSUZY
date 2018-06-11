package com.prj.nicarnaecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("login")
@Controller
public class LoginController {

	@RequestMapping(value = "/login")
	public String login(Model model) {
		model.addAttribute("login");
		return "login/login";
	}
}
