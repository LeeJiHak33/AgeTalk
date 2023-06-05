package kr.ac.kopo.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.api.TTSApi;
import kr.ac.kopo.dao.UserDao;
import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Chat;
import kr.ac.kopo.pager.Pager;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;

	@Override
	public List<Qna> qna(Pager pager) {

		int total = dao.total(pager);
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

	@Override
	public void dummy() {
		for (int i = 1; i < 100; i++) {
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

			for (Qna item : qna) {

				dao.qna_delete(item.getId());
			}
			
		} while(qna.size() > 0);
	}
	
		
	@Override
	public List<Notice> notice(Pager pager) {
		int total=dao.notice_total();
		pager.setTotal(total);
		return dao.notice(pager);
	}

	@Override
	public Notice notice_item(int id) {
		return dao.notice_item(id);

	}


	@Override
	public void comment_update(Comment item) {
		dao.comment_update(item);
	}

	@Override
	public void hyp_update(User item) {
		User user = dao.user_item(item);
		
		item.setId(user.getId());
		item.setName(user.getName());
		item.setPhone(user.getPhone());
		item.setPwd(user.getPwd());
		item.setStatus(user.getStatus());
		item.setAuthor(user.getAuthor());
		
		dao.hyp_update(item);
	}

	@Override
	public User update_user(User item) {
		return dao.update_user(item);
	}

	@Override
	public Notice notice_new() {
		return dao.notice_new();
	}

	@Override
	public void user_out(String id) {
		dao.user_out(id);
	}
	
	@Override
	public void signup(User item) {
		dao.signup(item);
	}

	@Override
	public boolean checkId(String id) {
		if (dao.checkId(id) == 0)
			return true;
		else
			return false;
	}
	
	@Override
	public boolean checkLogin(String id, String pwd) {
		 if (dao.checkLogin(id, pwd) == 0) {
		        return true;  
		    } else {
		        return false; 
		    }
	}
	
	@Override
	public boolean checkBen(String id) {
		if (dao.checkBen(id) == 1)
			return true;
		else
			return false;
	}

	@Override
	public boolean login_user(User user) {
		User item = dao.login_user(user);
		if (item != null && item.getStatus() == 0) {
			user.setHyp(item.getHyp());
			user.setName(item.getName());
			user.setPhone(item.getPhone());
			user.setAuthor(item.getAuthor());
			user.setStatus(item.getStatus());
			user.setInspection(item.getInspection());
			user.setMatchId(item.getMatchId());
			return true;
		} else {
			return false;

		}
	}

	@Override
	public boolean login_admin(User item) {
		
		User user = dao.login_admin(item);
		if(user != null) {
			
			return true;
		}
		else {
			return false;
		}
		
		
	}

	@Override
	public void notice_viewCount(int id) {

		dao.notice_viewCount(id);
	}

	@Override
	public List<Chat> chat_list(int matchId) {
		
		return dao.chat_list(matchId);
	}

	@Transactional
	@Override
	public void chatting_add(Chat item) {
		dao.chatting_add(item);
		TTSApi api=new TTSApi();
		File file= api.add(item.getContent());
	}


}
