package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Notice;

@Repository
public class AdminDaoImpl implements AdminDao {


	@Autowired
	SqlSession sql;

	@Override
	public List<Notice> notice_list() {
		// TODO Auto-generated method stub
		return sql.selectList("admin.notice_list");
	}

	@Override
	public void notice_insert(Notice item) {
		// TODO Auto-generated method stub
		sql.insert("admin.notice_insert", item);
	}

	@Override
	public Notice notice_item(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne("admin.notice_item",id);
	}

	@Override
	public void notice_update(Notice item) {
		// TODO Auto-generated method stub
		sql.update("admin.notice_update", item);
	}

	@Override
	public void notice_delete(int id) {
		// TODO Auto-generated method stub
		sql.delete("admin.notice_delete", id);
	}
	
	
}
