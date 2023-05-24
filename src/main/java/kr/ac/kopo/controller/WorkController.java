package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.Manage;
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
	@RequestMapping("/youthlist/{id}")
	public String youth(@PathVariable String id, Model model, Pager pager) {
		
		List<User> list = service.youthlist(pager);
	
		model.addAttribute("list", list);
		
		return path + "youthlist";
	}
	@RequestMapping("/youthlist/{id}/{yid}")
	public String match(@PathVariable String id, @PathVariable String yid) {
		service.match(id, yid);
		return "redirect:managelist";
	}
	
	
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
