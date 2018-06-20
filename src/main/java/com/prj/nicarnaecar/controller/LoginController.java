package com.prj.nicarnaecar.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.prj.nicarnaecar.service.LoginService;
import com.prj.nicarnaecar.vo.LoginVO;
import com.prj.nicarnaecar.vo.MemberVO;


@SessionAttributes({"login","find"})
@Controller
public class LoginController {

	@Autowired
	@Qualifier("loginServiceImplXML")
	LoginService loginService;
	
	@RequestMapping(value = "/login")
	public String login(Model model, HttpSession session, SessionStatus sessionStatus) {	
	
		if(session.getAttribute("login") != null) {
			return "redirect:/"; 
		}
		model.addAttribute("login", new LoginVO());
		model.addAttribute("find", new MemberVO());
		return "login/login";	
	}
	
// 로그인 처리 부분
	@RequestMapping("/memLoginOK")
 	public String memLoginOK(@Valid @ModelAttribute("login") LoginVO login, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "login/login";
		}else { 
			MemberVO memberVO = loginService.getMember(login);
			if(memberVO != null) {
				model.addAttribute("login", memberVO);
				return "redirect:/";
			} else {
				return "login/login";
			}
		}
	}
}
