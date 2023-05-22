package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;

public interface WorkDao {

	int total(Pager pager);
	
	int oldtotal(Pager pager);

	List<User> youthlist(Pager pager);

	List<Old> oldlist(Pager pager);

}
