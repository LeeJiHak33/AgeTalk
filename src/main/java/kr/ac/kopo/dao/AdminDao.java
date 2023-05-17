package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Notice;

public interface AdminDao {

	List<Notice> notice_list();

	void notice_insert(Notice item);

	Notice notice_item(int id);

}
