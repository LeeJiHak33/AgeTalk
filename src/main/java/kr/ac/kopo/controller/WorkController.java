package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/work")
public class WorkController {
	final String path = "work/";
	
	@RequestMapping("/youth")
	public String youth() {
		return "/work/youthlist";
	}
	@RequestMapping("/old")
	public String old() {
		return "/work/oldlist";
	}
	@RequestMapping("/manage")
	public String manage() {
		return "/work/managelist";
	}
}
