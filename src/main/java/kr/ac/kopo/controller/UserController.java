package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	final String path = "user/";
	
	@GetMapping("/chatting")
	public String chatting() {
		return path+"chatting";
	}
		
	@GetMapping("/notice")
	public String notice() {
		return path + "notice";
	}
	
	@GetMapping("/notice_detail")
	public String notice_detail() {
		return path + "notice_detail";
	}
	
	@GetMapping("/qna")
	public String qna() {
		return path + "qna";
	}
	
	@RequestMapping("/explain")
	public String explain() {
		return path + "explain";
	}
	
	@RequestMapping("/diagnosis")
	public String diagnosis() {
		return path + "diagnosis";
	}
	
}
