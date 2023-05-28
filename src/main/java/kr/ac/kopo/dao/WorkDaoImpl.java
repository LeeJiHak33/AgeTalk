package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Match;
import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
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

	@Override
	public List<Old> oldlist(Pager pager) {
		return sql.selectList("work.oldlist_select", pager);
		
	}
	@Override
	public int oldtotal(Pager pager) {
		return sql.selectOne("work.oldlist_total", pager);
	}

	@Override
	public int alltotal(Pager pager) {
		return sql.selectOne("work.alllist_total", pager);
	}

	@Override
	public List<Manage> alllist(Pager pager) {
		return sql.selectList("work.alllist_select", pager);
	}

	@Override
	public void match_insert(Match item) {
		sql.insert("work.match_insert", item);	
	}	
	
	@Override
	public Work login_work(Work work) {
		return sql.selectOne("work.login", work);
	}

	@Override
	public void signup_work(Work item) {
		sql.insert("work.add", item);
		
	}

	@Override
	public int checkId_work(String id) {
		return sql.selectOne("work.check_id", id);
	}

	@Override
	public void addAttach(Attach attachs) {
		sql.insert("attach.add", attachs);
		
	}

	@Override
	public void match_delete(Match item) {
		sql.delete("work.match_delete", item);	
		
	}

	@Override
	public void add(Old item) {
		sql.insert("work.old_insert", item);	
		
	}
}
