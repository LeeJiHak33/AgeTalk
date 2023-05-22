package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;
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
	public String work_list(Pager pager,Model model) {
		List<Work> list=service.work_list(pager);
		model.addAttribute("list", list);
		
		return path+"work_list";
	}
	@GetMapping("/work_detail/{id}")
	public String work_detail(@PathVariable String id, Model model) {
		Work item=service.work_item(id);
		model.addAttribute("item", item);
		
		return path+"work_detail";
	}
	
	@RequestMapping("/login_admin")
	public String login_admin() {
		return path + "login_admin";
	}
	
	@RequestMapping("/notice")
	public String notice_list(Model model,Pager pager) {
		List<Notice> list =service.notice_list(pager);
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
	
	@PostMapping("/notice_update/{id}")
	public String notice_update(@PathVariable int id, Notice item) {
		item.setId(id);
		service.notice_update(item);
		
		return "redirect:../notice_detail/"+id;
	}
	
	@GetMapping("/notice_delete/{id}")
	public String notice_delete(@PathVariable int id) {
		service.notice_delete(id);
		return "redirect:../notice";
	}
	
	@GetMapping("/report_list")
	public String report_list(Model model, Pager pager) {
		List<Report> list =service.report_list(pager);
		model.addAttribute("list", list);
		return path+"report_list";
	}
	
	@ResponseBody
	@GetMapping("report_detail/{id}")
	public Report report_detail(@PathVariable int id) {
		Report item=service.report_detail(id);
		
		return item; 
	}
	
	@ResponseBody
	@GetMapping("account_stop/{id}")
	public String account_stop(@PathVariable String id) {
		service.account_stop(id);
		return id;
	}
	
	@GetMapping("work_confirm/{id}")
	public String work_confirm(@PathVariable String id) {
		service.work_confirm(id);
		return "redirect:../work_list";
	}
}
