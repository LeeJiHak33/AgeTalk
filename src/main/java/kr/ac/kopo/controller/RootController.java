package kr.ac.kopo.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.service.UserService;
import kr.ac.kopo.service.WorkService;

@Controller
public class RootController {
	final String uploadPath = "d://upload/";

	@Autowired
	WorkService w_service;

	@Autowired
	UserService u_service;

	@RequestMapping("/")
	public String main(Model model, User user) {

		Notice notice = u_service.notice_new();
		model.addAttribute("notice", notice);

		return "main";
	}

	@GetMapping("/signup")
	public String signup(Model model) {
		return "signup";
	}

	@PostMapping("/signup")
	public String signup(User item) {
		u_service.signup(item);
		return "signup_success";
	}

	@RequestMapping("/login_div")
	public String login_div() {
		return "login_div";
	}

	@GetMapping("/login_user")
	public String login_user() {
		return "login_user";
	}

	@PostMapping("/login_user")
	public String login_user(Model model, User item, HttpSession session) {
		if (u_service.login_user(item)) {

			session.setAttribute("user", item);

			String targetUrl = (String) session.getAttribute("target_url");
			session.removeAttribute("target_url");
			System.out.println("targetUrl" + targetUrl);
			if (targetUrl == null) {
				return "redirect:/";
			} else {
				return "redirect:/" + targetUrl;
			}

		} else {
			return "redirect:login_user";
		}

	}

	@ResponseBody
	@GetMapping("/checkId/{id}")
	public String checkId(@PathVariable String id) {

		if (u_service.checkId(id))
			return "OK";
		else
			return "FAIL";
	}

	@GetMapping("/login_work")
	public String login_work() {
		return "login_work";
	}

	@PostMapping("/login_work")
	public String login_work(Work item, HttpSession session) {
		if (w_service.login_work(item)) {

			session.setAttribute("work", item);

			String targetUrl = (String) session.getAttribute("target_url");
			session.removeAttribute("target_url");
			if (targetUrl == null) {
				return "redirect:/work/managelist";
			} else {
				return "redirect:/" + targetUrl;
			}

		} else {
			return "redirect:login_work";
		}

	}

	@GetMapping("/signup_work")
	public String signup_work(Model model) {
		return "signup_work";
	}

	@PostMapping("/signup_work")
	public String signup_work(Work item) {

		try {
			MultipartFile file = item.getFiles();

			if (file != null) {
				String name = file.getOriginalFilename();
				String uuid = UUID.randomUUID().toString();

				file.transferTo(new File(uploadPath + uuid + "_" + name));

				Attach attachItem = new Attach();
				attachItem.setUuid(uuid);
				attachItem.setName(name);
				attachItem.setWorkId(item.getId());
				item.setAttachs(attachItem);
			}

			w_service.signup_work(item);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return "signup_success_work";
	}

	@ResponseBody
	@RequestMapping("/delete_attach/{id}")
	public String deleteAttach(@PathVariable int id) {
		if (w_service.deleteAttach(id)) {
			return "OK";
		} else {
			return "FAIL";
		}
	}

	@ResponseBody
	@GetMapping("/checkId_work/{id}")
	public String checkId_work(@PathVariable String id) {

		if (w_service.checkId_work(id))
			return "OK";
		else
			return "FAIL";
	}

	@ResponseBody
	@PostMapping("/update_user")
	public User update_user(User item, HttpSession session) {
		u_service.update_user(item);

		session.setAttribute("user", item);

		return item;
	}
	
	

	@RequestMapping("/out/{id}")
	public String out(@PathVariable String id, HttpSession session) {

		u_service.user_out(id);
		session.invalidate();
		return "redirect:/";

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
	}

}
