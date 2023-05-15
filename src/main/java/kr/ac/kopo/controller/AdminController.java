package kr.ac.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	final String path = "admin/";
	
	@RequestMapping("/report_list")
	public String report_list() {
		return path+"report_list";
	}
	@RequestMapping("/work_list")
	public String work_list() {
		return path+"work_list";
	}
	@RequestMapping("/work_detail")
	public String work_detail() {
		return path+"work_detail";
	}
	
	@RequestMapping("/login_admin")
	public String login_admin() {
		return path + "login_admin";
	}
}
