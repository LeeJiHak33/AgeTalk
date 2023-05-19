package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Comment;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Qna;
import kr.ac.kopo.model.User;
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
	public List<Notice> notice() {
		// TODO Auto-generated method stub
		return sql.selectList("user.notice");
	}

	@Override
	public Notice notice_item(int id) {
		// TODO Auto-generated method stub
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
	public void update_user(User item) {
		sql.update("user.update_user", item);
	}

}
