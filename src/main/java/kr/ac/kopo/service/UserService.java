package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;


public interface UserService {

	List<Qna> qna(Pager pager);

	void qna_insert(Qna item);

	Qna item(int id);

	void qna_update(Qna item);

	void qna_delete(int id);

	void qna_comment(Comment item);

	Comment cmt(int id);

	void comment_delete(int id);
	void dummy();

	void init();

	List<Notice> notice();

	Notice notice_item(int id);


	void signup(User item);

	boolean checkId(String id);

	boolean login_user(User user);



}
