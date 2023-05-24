package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;

public interface AdminService {

	List<Notice> notice_list(Pager pager);

	void notice_insert(Notice item);

	Notice notice_item(int id);

	void notice_update(Notice item);

	void notice_delete(int id);

	List<Report> report_list(Pager pager);

	Report report_detail(int id);

	void account_stop(String id);

	List<Work> work_list(Pager pager);

	Work work_item(String id);

	void work_confirm(String id);

}
