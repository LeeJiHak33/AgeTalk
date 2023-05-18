package kr.ac.kopo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.User;
import kr.ac.kopo.service.UserService;

@Controller
public class RootController {
	
	@Autowired
	UserService u_service;

	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/signup")
	public String signup(Model model) {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signup(User item) {
		u_service.signup(item);
		return "signup_success";
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
	
	/*
	 * @RequestMapping("/signup") public String signup() { return "signup"; }
	 */
	
	@RequestMapping("/signup_success")
	public String signup_success() {
		return "signup_success";
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
