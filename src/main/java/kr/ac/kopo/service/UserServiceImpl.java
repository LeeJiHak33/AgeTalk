package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.UserDao;
import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Qna;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	@Override
	public List<Qna> qna() {

		return dao.qna();
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

}
