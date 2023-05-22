package kr.ac.kopo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

	@Autowired
	UserService u_service;

	@RequestMapping("/")
	public String main(Model model) {
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
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

	@GetMapping("/login_user")
	public String login_user() {
		return "login_user";
	}

	@PostMapping("/login_user")
	public String login_user(User item, HttpSession session) {
		if (u_service.login_user(item)) {

			session.setAttribute("user", item);
			
			String targetUrl = (String) session.getAttribute("target_url");
			/* session.removeAttribute("target_url"); */
			System.out.println("targetUrl"+ targetUrl);
			if (targetUrl == null) {
				return "redirect:/";
			} else {
				return "redirect:/" + targetUrl;
		}

		} else {
			return "redirect:login_user";
		}

	}

	@RequestMapping("/login_work")
	public String login_work() {
		return "login_work";
	}

	@ResponseBody
	@GetMapping("/checkId/{id}")
	public String checkId(@PathVariable String id) {

		if (u_service.checkId(id))
			return "OK";
		else
			return "FAIL";
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
