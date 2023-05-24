package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Chat;
import kr.ac.kopo.pager.Pager;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Qna> qna(Pager pager) {
		return sql.selectList("user.qna", pager);
	}

	@Override
	public void qna_insert(Qna item) {
		sql.insert("user.qna_insert", item);
	}

	@Override
	public Qna item(int id) {
		return sql.selectOne("user.qna_item", id);
	}

	@Override
	public void qna_update(Qna item) {
		sql.update("user.qna_update", item);
	}

	@Override
	public void qna_delete(int id) {
		sql.delete("user.qna_delete", id);
	}

	@Override
	public void qna_comment(Comment item) {
		sql.insert("user.qna_comment", item);
	}

	@Override
	public Comment cmt(int id) {
		return sql.selectOne("user.cmt", id);
	}

	@Override
	public void comment_delete(int id) {
		sql.delete("user.comment_delete", id);
	}
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("user.qna_total", pager);
	}

	@Override
	public List<Notice> notice(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("user.notice",pager);
	}

	@Override
	public Notice notice_item(int id) {
		return sql.selectOne("user.notice_item", id);

	}

	@Override
	public void comment_update(Comment item) {
		sql.update("user.comment_update", item);
	}

	@Override
	public void hyp_update(User item) {
		sql.update("user.hyp_update", item);
	}

	@Override
	public User update_user(User item) {
		sql.update("user.update_user", item);
		return item;
	}

	@Override
	public User user_item(User item) {
		return sql.selectOne("user_item", item);
	}

	@Override
	public Notice notice_new() {
		return sql.selectOne("user.notice_new");
	}

	@Override
	public void user_out(String id) {
		sql.delete("user.user_out", id);
	}

	public void signup(User item) {
		sql.insert("user.add", item);
		
	}

	@Override
	public int checkId(String id) {
		return sql.selectOne("user.check_id", id);
	}

	@Override
	public User login_user(User user) {
		return sql.selectOne("user.login", user);
	}

	@Override	
	public int notice_total() {
		return sql.selectOne("user.notice_total");
	}

	@Override
	public User login_admin(User item) {
		// TODO Auto-generated method stub
		return sql.selectOne("user.login_admin", item);
	}

	@Override
	public void notice_viewCount(int id) {
		// TODO Auto-generated method stub
		sql.update("user.notice_viewCount", id);
	}

	@Override
	public List<Chat> chat_list(int matchId) {
		// TODO Auto-generated method stub
		return sql.selectList("user.chat_list", matchId);
	}

	@Override
	public void chatting_add(Chat item) {
		sql.insert("user.chatting_add",item);		
	}

}
