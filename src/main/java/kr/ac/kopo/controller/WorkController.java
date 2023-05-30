package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.service.WorkService;

@Controller
@RequestMapping("/work")
public class WorkController {
	final String path = "work/";
	
	@Autowired
	WorkService service;

	/*
	 * @RequestMapping("/youthlist") public String youth() {
	 * 
	 * return path + "youthlist"; }
	 *
	 */				
	
	@RequestMapping("/oldlist")
	public String old(Model model, Pager pager) {
	List<Old> list = service.oldlist(pager);
		
		model.addAttribute("list", list);
		return path + "oldlist";
	}
	
	@RequestMapping("/managelist")
	public String manage(Model model, Pager pager) {
		List<Manage> list = service.alllist(pager);
		
		model.addAttribute("list", list);
		return path+"managelist";
	}
	@GetMapping("/add")
	public String add(Model model) {
		return "/work/add";
	}
	@ResponseBody
	@PostMapping("/add")
	public String add(Old item, HttpSession session) {
	session.setAttribute("old", item);
	service.add(item);	
	return path + "/oldlist";
	}
	
	
	@GetMapping("/maninsert")
	public String maninsert() {
		return path + "/maninsert";
	}
	
	@GetMapping("/chatting")
	public String chatting() {
		return path + "chatting";	
	}
		
	
	
}
