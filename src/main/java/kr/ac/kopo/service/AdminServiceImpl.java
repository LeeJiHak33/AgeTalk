package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.AdminDao;
import kr.ac.kopo.model.Notice;

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
	
	
}
