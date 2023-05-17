package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	final String path = "admin/";
	
	@Autowired
	AdminService service;
	
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
	
	@RequestMapping("/notice")
	public String notice(Model model) {
		List<Notice> list =service.list();
		model.addAttribute("list",list);
		return path+"notice";
	}
	
}
