package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
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
	@RequestMapping("/youthlist")
	public String youth(Model model, Pager pager) {
	List<User> list = service.youthlist(pager);
		
		model.addAttribute("list", list);
		
		return path + "youthlist";
	}
	
	@RequestMapping("/oldlist")
	public String old(Model model, Pager pager) {
	List<Old> list = service.oldlist(pager);
		
		model.addAttribute("list", list);
		return path + "oldlist";
	}
	
	@RequestMapping("/managelist" )
	public String manage() {
		return path + "/managelist";
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
