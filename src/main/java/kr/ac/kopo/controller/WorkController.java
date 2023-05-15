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
	
	@RequestMapping("/youthlist")
	public String youth() {
		return path + "youthlist";
	}
	@RequestMapping("/oldlist")
	public String old() {
		return path + "oldlist";
	}
	@RequestMapping("/managelist")
	public String manage() {
		return path + "/managelist";
	}
	@GetMapping("/maninsert")
	public String maninsert() {
		return path + "/maninsert";
	}
	@GetMapping("/chatting")
	public String chatting() {
		return path+"chatting";
	
	}
		
	
	
}
