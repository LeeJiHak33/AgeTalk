package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Qna;

public interface UserDao {

	List<Qna> qna();

	void qna_insert(Qna item);

	Qna item(int id);

	void qna_update(Qna item);


}
