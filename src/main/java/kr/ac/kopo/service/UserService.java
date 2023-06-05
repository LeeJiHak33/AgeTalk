package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Chat;
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

	List<Notice> notice(Pager pager);

	Notice notice_item(int id);

	void comment_update(Comment item);

	void hyp_update(User item);

	User update_user(User item);

	Notice notice_new();

	void user_out(String id);



	void signup(User item);

	boolean checkId(String id);

	boolean login_user(User user);

	boolean login_admin(User item);

	void notice_viewCount(int id);

	List<Chat> chat_list(int matchId);

	void chatting_add(Chat item);

	boolean checkLogin(String id, String pwd);

	boolean checkBen(String id);



}
