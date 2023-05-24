package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.WorkDao;
import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Match;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.pager.Pager;
@Service
public class WorkServiceImpl implements WorkService {
	@Autowired
	WorkDao dao;


	@Override
	public List<User> youthlist(Pager pager) {
		int total=dao.total(pager);
		pager.setTotal(total);
		return dao.youthlist(pager);
	}


	@Override
	public List<Old> oldlist(Pager pager) {
		int oldtotal=dao.oldtotal(pager);
		pager.setTotal(oldtotal);
		return dao.oldlist(pager);
	
	
	}


	@Override
	public List<Manage> alllist(Pager pager) {
		int alltotal=dao.alltotal(pager);
		pager.setTotal(alltotal);
		return dao.alllist(pager);
		
	}


	
	@Override
	public void match(String id, String yid) {
		Match item = new Match();
		item.setId(id);
		item.setYid(yid);
		
		dao.match_insert(item);
	
	}

	
	}
