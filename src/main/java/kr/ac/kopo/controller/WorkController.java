package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/work")
public class WorkController {
	final String path = "work/";
	
	@GetMapping("/chatting")
	public String chatting() {
		return path+"chatting";
	}
	
}
