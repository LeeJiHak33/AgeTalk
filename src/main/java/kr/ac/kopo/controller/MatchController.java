package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.service.WorkService;
@Controller
public class MatchController {
	
	@Autowired
	WorkService service;

	
	@RequestMapping("/{id}/work/youthlist/")
	public String youth(@PathVariable String id, Model model, Pager pager) {
		
		List<User> list = service.youthlist(pager);
	
		model.addAttribute("list", list);
		
		return"/work/youthlist";
	}
	@RequestMapping("{sid}/work/youthlist/{yid}")
	public String match(@PathVariable String sid, @PathVariable String yid) {
		service.match(sid, yid);
		
		return "redirect:/work/managelist";
	}
	@RequestMapping("{matchid}/work/youthlist/delete")
	public String matchdelete(@PathVariable int matchid) {
		service.matchdelete(matchid);
		
		return "redirect:/work/managelist";
	}
	@GetMapping("{yid}/work/report")
	public String report(Model model, @PathVariable String yid) {
		return "/work/report_insert";
	}
	@PostMapping("{yid}/work/report")
	public String report(Report item, @PathVariable String yid, HttpSession session, @SessionAttribute Work work) {
			item.setUserId(yid);
			item.setWorkId(work.getId());
			service.report_insert(item);
			return "redirect:/work/managelist";
		}
	}

