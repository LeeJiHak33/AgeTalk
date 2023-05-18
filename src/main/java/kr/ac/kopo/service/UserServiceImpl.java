package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.UserDao;
import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.pager.Pager;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	@Override
	public List<Qna> qna(Pager pager) {
		
		int total=dao.total(pager);
		pager.setTotal(total);

		return dao.qna(pager);
	}

	@Override
	public void qna_insert(Qna item) {
		dao.qna_insert(item);
	}

	@Override
	public Qna item(int id) {
		return dao.item(id);
	}

	@Override
	public void qna_update(Qna item) {
		dao.qna_update(item);
	}

	@Override
	public void qna_delete(int id) {
		dao.qna_delete(id);
	}

	@Override
	public void qna_comment(Comment item) {
		dao.qna_comment(item);
	}

	@Override
	public Comment cmt(int id) {
		return dao.cmt(id);
	}

	@Override
	public void comment_delete(int id) {
		dao.comment_delete(id);
	}
	
	public void dummy() {
		for(int i=1; i<100; i++) {
			Qna item = new Qna();
			
			item.setTitle("글제목" + i);
			item.setContent("내용" + i);
			
	
		dao.qna_insert(item);
		}
		
	}

	@Override
	public void init() {
		List<Qna> qna;
		
		Pager pager = new Pager();
		pager.setPerPager(9999);
		
		do {
			qna = dao.qna(pager);
			
			for(Qna item : qna) {
				
				dao.qna_delete(item.getId());
			}
			
		} while(qna.size() > 0);
	}
	
		
	
	public List<Notice> notice() {
		// TODO Auto-generated method stub
		return dao.notice();
	}

	@Override
	public Notice notice_item(int id) {
		// TODO Auto-generated method stub
		return dao.notice_item(id);

	}


	@Override
	public void comment_update(Comment item) {
		dao.comment_update(item);
	}

}
