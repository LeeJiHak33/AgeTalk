package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Qna;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Qna> qna() {
		return sql.selectList("user.qna");
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

}
