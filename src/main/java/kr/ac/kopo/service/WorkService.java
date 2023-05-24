package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;

public interface WorkService {

	List<User> youthlist(Pager pager);

	List<Old> oldlist(Pager pager);

	List<Manage> alllist(Pager pager);
	
	void match(String id, String yid);
	boolean login_work(Work work);

	void signup_work(Work item);

	boolean checkId_work(String id);

	boolean deleteAttach(int id);

	


}
