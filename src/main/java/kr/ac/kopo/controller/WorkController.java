package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.pager.WorkPager;
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
	public String old(Model model, @SessionAttribute Work work, WorkPager pager) {
		pager.setId(work.getId()); 
		List<Old> list = service.oldlist(pager);		
		model.addAttribute("list", list);
		return path + "oldlist";
	}
	
	@RequestMapping("/managelist")
	public String manage(Model model, @SessionAttribute Work work, WorkPager pager) {
		pager.setId(work.getId());
		
		List<Manage> list = service.alllist(pager);	    
	    model.addAttribute("list", list);
	    return path + "managelist";
	}
	@GetMapping("/add")
	public String add(Model model) {
		return "/work/add";
	}
	@ResponseBody
	@PostMapping("/add")
	public String add(Old item, HttpSession session, @SessionAttribute Work work) {
		item.setWorkId(work.getId());
		session.setAttribute("old", item);
		service.add(item);	
		return path + "/oldlist";
	}
	@ResponseBody
	@GetMapping("/update_old/{id}")
	public Old update_old(@PathVariable String id) {
	    Old item = service.item(id);
	    item.setsId(id);
	    return item;
	}
	@ResponseBody
	@PostMapping("/update_old/{id}")
	public Old update_old(Old item,@PathVariable String id, HttpSession session) {
		item.setsId(id);					
		session.setAttribute("old", item);
		service.update_old(item, id);
		return item;
	}
	@RequestMapping("/delete/{sId}")
	public String olddelete(@PathVariable String sId) {
		service.olddelete(sId);
		
		return "redirect:/work/managelist";
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
