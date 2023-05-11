package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RootController {

	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("/signup_work")
	public String signup_work() {
		return "signup_work";
	}
	
	@RequestMapping("/signup_div")
	public String signup_div() {
		return "signup_div";
	}
	
	@RequestMapping("/signup_success")
	public String signup_success() {
		return "signup_success";
	}
	
	@RequestMapping("/signup_success_work")
	public String signup_success_work() {
		return "signup_success_work";
	}
}
