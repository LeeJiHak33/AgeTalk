package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RootController {

	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/login_div")
	public String login_div() {
		return "login_div";
	}
	
	@RequestMapping("/login_user")
	public String login_user() {
		return "login_user";
	}
	
	@RequestMapping("/login_work")
	public String login_work() {
		return "login_work";
	}
	
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("/signup_success")
	public String signup_sucess() {
		return "signup_sucess";
	}
	
	
	@RequestMapping("/signup_work")
	public String signup_work() {
		return "signup_work";
	}
	
	@RequestMapping("/signup_success_work")
	public String signup_success_work() {
		return "signup_success_work";
	}
}
