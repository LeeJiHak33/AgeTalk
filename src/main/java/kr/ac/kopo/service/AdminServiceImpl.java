package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.AdminDao;
import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDao dao;

	@Override
	public List<Notice> notice_list(Pager pager) {
		
		int total=dao.notice_total();
		pager.setTotal(total);
		return dao.notice_list(pager);
	}

	@Override
	public void notice_insert(Notice item) {
	
		
		dao.notice_insert(item);
	}

	@Override
	public Notice notice_item(int id) {
		
		return dao.notice_item(id);
	}

	@Override
	public void notice_update(Notice item) {
		
		dao.notice_update(item);
	}

	@Override
	public void notice_delete(int id) {
		
		dao.notice_delete(id);
	}

	@Override
	public List<Report> report_list(Pager pager) {
		
		int total=dao.report_total();
		pager.setTotal(total);
		
		return dao.report_list(pager);
	}

	@Override
	public Report report_detail(int id) {
		
		return dao.report_detail(id);
	}

	@Override
	public void account_stop(String id) {
		
		 dao.account_stop(id);
	}

	@Override
	public List<Work> work_list(Pager pager) {
		
		int total=dao.work_total();
		pager.setTotal(total);
		return dao.work_list(pager);
	}

	@Override
	public Work work_item(String id) {
		
		return dao.work_item(id);
	}

	@Override
	public void work_confirm(String id) {
		
		dao.work_confirm(id);
	}

	@Override
	public Attach attach_item(String id) {

		return dao.attach_item(id);
	}
	
	
}
