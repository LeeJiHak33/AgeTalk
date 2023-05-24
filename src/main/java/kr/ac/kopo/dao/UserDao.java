package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Chat;
import kr.ac.kopo.pager.Pager;

public interface UserDao {

	List<Qna> qna(Pager pager);

	void qna_insert(Qna item);

	Qna item(int id);

	void qna_update(Qna item);

	void qna_delete(int id);

	void qna_comment(Comment item);

	Comment cmt(int id);

	void comment_delete(int id);
	int total(Pager pager);


	List<Notice> notice(Pager pager);

	Notice notice_item(int id);

	void comment_update(Comment item);

	void hyp_update(User item);

	User update_user(User item);

	User user_item(User item);

	Notice notice_new();

	void user_out(String id);
	void signup(User item);

	int checkId(String id);

	User login_user(User user);



	int notice_total();

	User login_admin(User item);

	void notice_viewCount(int id);

	List<Chat> chat_list(int matchId);

	void chatting_add(Chat item);


}
