package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;

public interface WorkDao {

	int total(Pager pager);

	List<User> youthlist(Pager pager);

}
