package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;

@Repository
public class WorkDaoImpl implements WorkDao {

	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {
		return sql.selectOne("work.youthlist_total", pager);
	}

	@Override
	public List<User> youthlist(Pager pager) {
		return sql.selectList("work.youthlist_select", pager);
	}
}
