package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String notice_list(Model model) {
		List<Notice> list =service.notice_list();
		model.addAttribute("list",list);
		return path+"notice";
	}
	
	@GetMapping("/notice_insert")
	public String notice_insert() {
		return path+"notice_insert";
	}
	@PostMapping("/notice_insert")
	public String notice_insert(Notice item) {
		item.setUserId("admin");
		service.notice_insert(item);
		return "redirect:notice";
	}
	
	@GetMapping("/notice_detail/{id}")
	public String notice_detail(@PathVariable int id,Model model) {
		Notice item=service.notice_item(id);
		model.addAttribute("item",item);
		return path+"notice_detail";
	}
	
	
	@GetMapping("/notice_update/{id}")
	public String notice_update(@PathVariable int id,Model model) {
		Notice item=service.notice_item(id);
		model.addAttribute("item",item);
		return path+"notice_update";
	}
}
