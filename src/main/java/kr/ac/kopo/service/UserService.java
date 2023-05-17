package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Qna;


public interface UserService {

	List<Qna> qna();

	void qna_insert(Qna item);

	Qna item(int id);

	void qna_update(Qna item);

	void qna_delete(int id);



}
