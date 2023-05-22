package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;
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
	public String notice(Model model,Pager pager) {
		List<Notice> list =service.notice(pager);
		model.addAttribute("list", list);
		
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "notice";
	}
	
	@GetMapping("/notice_detail/{id}")
	public String notice_detail(@PathVariable int id,Model model) {
		Notice item=service.notice_item(id);
		model.addAttribute("item", item);
		
		service.notice_viewCount(id);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "notice_detail";
	}
	
	@GetMapping("/qna")
	public String qna(Model model, Pager pager) {
		List<Qna> list = service.qna(pager);
		model.addAttribute("list", list);
		
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "qna";
	}
	
	@RequestMapping("/qna_dummy")
	public String dummy() {
		service.dummy();
		
		return "redirect:qna";
	}
	
	@RequestMapping("/qna_init")
	public String init() {
		service.init();
		
		return "redirect:qna";
	}
	
	@GetMapping("/qna_insert")
	public String qna_insert(Model model) {
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
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
		
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "qna_update";
	}
	
	@PostMapping("/qna_update/{id}")
	public String qna_update(@PathVariable int id, Qna item, HttpServletRequest request) {
		String referer = request.getHeader("Referer");
		
		item.setId(id);
		
		service.qna_update(item);
		
		return "redirect:" + referer;
	}
	
	@GetMapping("/qna_delete/{id}")
	public String qna_delete(@PathVariable int id) {
		service.qna_delete(id);
		
		return "redirect:../qna";
	}
	
	@GetMapping("/qna_detail/comment_delete/{id}")
	public String comment_delete(@PathVariable int id, HttpServletRequest request) {
		String referer = request.getHeader("Referer");
		
		service.comment_delete(id);
		
		return "redirect:" + referer;
	}
	
	@PostMapping("/qna_detail/comment_update/{id}")
	public String comment_update(@PathVariable int id, HttpServletRequest request, Comment item) {
		String referer = request.getHeader("Referer");	
		item.setId(id);
		
		service.comment_update(item);
		
		return "redirect:" + referer;
	}
	
	@GetMapping("/qna_detail/{id}")
	public String qna_detail(@PathVariable int id, Model model, Qna qna, Comment comment) {
		Qna item = service.item(id);
		item.setId(id);
		model.addAttribute("item", item);
		
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "qna_detail";
	}
	
	@PostMapping("/qna_detail/{id}")
	public String qna_comment(@PathVariable int id, Comment item) {
		
		item.setQnaId(id);
		
		service.qna_comment(item);

		return "redirect:../qna_detail/{id}";
	}
	
	@RequestMapping("/explain")
	public String explain(Model model) {
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "explain";
	}
	
	@GetMapping("/diagnosis")
	public String diagnosis(Model model) {
		User user = service.user_item();
		model.addAttribute("user", user);
		
		Notice notice = service.notice_new();
		model.addAttribute("notice", notice);
		
		return path + "diagnosis";
	}
	
	@PostMapping("/diagnosis")
	public String diagnosis(User item) {
		service.hyp_update(item);
		
		return "redirect:..";
	}
	
}
