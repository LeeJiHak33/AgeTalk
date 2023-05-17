package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Notice;

public interface AdminService {

	List<Notice> notice_list();

	void notice_insert(Notice item);

	Notice notice_item(int id);

}
