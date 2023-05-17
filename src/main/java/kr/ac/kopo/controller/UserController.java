package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	final String path = "user/";
	
	@Autowired
	UserService service;
	
	@GetMapping("/chatting")
	public String chatting() {
		return path+"chatting";
	}
		
	@GetMapping("/notice")
	public String notice() {
		return path + "notice";
	}
	
	@GetMapping("/notice_detail")
	public String notice_detail() {
		return path + "notice_detail";
	}
	
	@GetMapping("/qna")
	public String qna(Model model) {
		List<Qna> list = service.qna();
		
		model.addAttribute("list", list);
		
		return path + "qna";
	}
	
	@GetMapping("/qna_insert")
	public String qna_insert() {
		return path + "qna_insert";
	}
	
	@PostMapping("/qna_insert")
	public String qna_insert(Qna item) {

		service.qna_insert(item);
		
		return "redirect:qna";
	}
	
	@GetMapping("/qna_update/{id}")
	public String qna_update(@PathVariable int id, Model model) {
		Qna item = service.item(id);
		item.setId(id);
		model.addAttribute("item", item);
		
		return path + "qna_update";
	}
	
	@PostMapping("/qna_update/{id}")
	public String qna_update(@PathVariable int id, Qna item) {
		item.setId(id);
		
		service.qna_update(item);
		
		return "redirect:../qna";
	}

	
	@GetMapping("/qna_detail/{id}")
	public String qna_detail(@PathVariable int id, Model model, Qna qna) {
		
		Qna item = service.item(id);
		item.setId(id);
		model.addAttribute("item", item);
		
		return path + "qna_detail";
	}
	
	@RequestMapping("/explain")
	public String explain() {
		return path + "explain";
	}
	
	@GetMapping("/diagnosis/{id}")
	public String diagnosis(@PathVariable int id) {
		return path + "diagnosis";
	}
	
}
