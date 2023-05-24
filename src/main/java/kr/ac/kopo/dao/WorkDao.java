package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;

public interface WorkDao {

	int total(Pager pager);
	
	int oldtotal(Pager pager);

	List<User> youthlist(Pager pager);

	List<Old> oldlist(Pager pager);

	Work login_work(Work work);

	void signup_work(Work item);

	int checkId_work(String id);

	void addAttach(Attach attachs);

}
