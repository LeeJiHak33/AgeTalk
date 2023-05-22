package kr.ac.kopo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.User;
import kr.ac.kopo.service.UserService;

@Controller
public class RootController {
	
	@Autowired
	UserService service;

	@RequestMapping("/")
	public String main(Model model) {
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
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
	
	@ResponseBody
	@PostMapping("/update_user")
	public void update_user(User item) {
		
		service.update_user(item);
		
	}
	
	@RequestMapping("/out")
	public String out() {
		service.user_out();
		
		return "redirect:.";
	}
}
