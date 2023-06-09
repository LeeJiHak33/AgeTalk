package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.pager.WorkPager;

public interface WorkService {

	List<User> youthlist(Pager pager);

	List<Old> oldlist(WorkPager pager);

	List<Manage> alllist(WorkPager pager);
	
	void match(String sid, String yid);
	
	boolean login_work(Work work);

	void signup_work(Work item);

	boolean checkId_work(String id);

	boolean deleteAttach(int id);

	void matchdelete(int matchid);	

	void add(Old item);

	void update_old(Old item, String id);

	void olddelete(String sId);

	Old item(String id);

	void report_insert(Report item);
	
	boolean checkAccess(String id);

	boolean checkWorkLogin(String id, String pwd);



	


}
