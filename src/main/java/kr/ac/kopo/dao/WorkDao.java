package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Match;
import kr.ac.kopo.model.Attach;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.Report;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.pager.WorkPager;

public interface WorkDao {

	int total(Pager pager);
	
	int oldtotal(Pager pager);

	List<User> youthlist(Pager pager);

	List<Old> oldlist(WorkPager pager);
	
	int alltotal(Pager pager);

	List<Manage> alllist(WorkPager pager);

	void match_insert(Match item);

	

	Work login_work(Work work);

	void signup_work(Work item);

	int checkId_work(String id);

	void addAttach(Attach attachs);

	void match_delete(Match item);

	void add(Old item);

	Old update_old(Old item, String id);

	void olddelete(String sId);

	Old item(String id);

	void report_insert(Report item);
	int checkWorkLogin(String id, String pwd);

	int checkAccess(String id);

}
