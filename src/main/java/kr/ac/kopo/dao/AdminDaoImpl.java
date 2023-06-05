package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;

@Repository
public class AdminDaoImpl implements AdminDao {


	@Autowired
	SqlSession sql;

	@Override
	public List<Notice> notice_list(Pager pager) {
		return sql.selectList("admin.notice_list",pager);
	}

	@Override
	public void notice_insert(Notice item) {
		sql.insert("admin.notice_insert", item);
	}

	@Override
	public Notice notice_item(int id) {
		return sql.selectOne("admin.notice_item",id);
	}

	@Override
	public void notice_update(Notice item) {
		sql.update("admin.notice_update", item);
	}

	@Override
	public void notice_delete(int id) {
		sql.delete("admin.notice_delete", id);
	}

	@Override
	public int report_total() {
		return sql.selectOne("admin.report_total");
	}

	@Override
	public List<Report> report_list(Pager pager) {
		return sql.selectList("admin.report_list", pager);
	}

	@Override
	public Report report_detail(int id) {
		return sql.selectOne("admin.report_detail", id);
	}

	@Override
	public void account_stop(String id) {
		 sql.update("admin.account_stop", id);
	}

	@Override
	public int notice_total() {
		return sql.selectOne("admin.notice_total");
	}

	@Override
	public int work_total() {
		return sql.selectOne("admin.work_total");
	}

	@Override
	public List<Work> work_list(Pager pager) {
		return sql.selectList("admin.work_list", pager);
	}

	@Override
	public Work work_item(String id) {
		return sql.selectOne("admin.work_item", id);
	}

	@Override
	public void work_confirm(String id) {
		sql.update("admin.work_confirm", id);
	}

	@Override
	public Attach attach_item(String id) {
		
		return sql.selectOne("attach.item", id);
	}
	
	
}
