package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.AdminDao;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.pager.Pager;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDao dao;

	@Override
	public List<Notice> notice_list() {
		// TODO Auto-generated method stub
		return dao.notice_list();
	}

	@Override
	public void notice_insert(Notice item) {
		// TODO Auto-generated method stub
		
		dao.notice_insert(item);
	}

	@Override
	public Notice notice_item(int id) {
		// TODO Auto-generated method stub
		return dao.notice_item(id);
	}

	@Override
	public void notice_update(Notice item) {
		// TODO Auto-generated method stub
		dao.notice_update(item);
	}

	@Override
	public void notice_delete(int id) {
		// TODO Auto-generated method stub
		dao.notice_delete(id);
	}

	@Override
	public List<Report> report_list(Pager pager) {
		// TODO Auto-generated method stub
		int total=dao.report_total();
		pager.setTotal(total);
		
		return dao.report_list(pager);
	}
	
	
}
