package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;

public interface WorkService {

	List<User> youthlist(Pager pager);

}
