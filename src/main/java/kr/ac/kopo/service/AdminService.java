package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.pager.Pager;

public interface AdminService {

	List<Notice> notice_list();

	void notice_insert(Notice item);

	Notice notice_item(int id);

	void notice_update(Notice item);

	void notice_delete(int id);

	List<Report> report_list(Pager pager);

}
