package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.All;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;

public interface WorkService {

	List<User> youthlist(Pager pager);

	List<Old> oldlist(Pager pager);

	List<All> alllist(Pager pager);

}
