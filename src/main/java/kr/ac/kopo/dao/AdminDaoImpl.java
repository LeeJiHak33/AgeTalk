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
	public List<Notice> list() {
		// TODO Auto-generated method stub
		return sql.selectList("admin.list");
	}
	
	
}
