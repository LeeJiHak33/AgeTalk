package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.pager.Pager;

public interface AdminDao {

	List<Notice> notice_list();

	void notice_insert(Notice item);

	Notice notice_item(int id);

	void notice_update(Notice item);

	void notice_delete(int id);

	int report_total();

	List<Report> report_list(Pager pager);

}
