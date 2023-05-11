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
	
}
