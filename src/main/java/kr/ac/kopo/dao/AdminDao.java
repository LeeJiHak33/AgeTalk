package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;

public interface AdminDao {

	List<Notice> notice_list(Pager pager);

	void notice_insert(Notice item);

	Notice notice_item(int id);

	void notice_update(Notice item);

	void notice_delete(int id);

	int report_total();

	List<Report> report_list(Pager pager);

	Report report_detail(int id);

	void account_stop(String id);

	int notice_total();

	int work_total();

	List<Work> work_list(Pager pager);

	Work work_item(String id);

	void work_confirm(String id);

	Attach attach_item(String id);

}
