package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.dao.AttachDao;
import kr.ac.kopo.dao.WorkDao;
import kr.ac.kopo.model.Manage;
import kr.ac.kopo.model.Match;
import kr.ac.kopo.model.Old;
import kr.ac.kopo.model.User;
import kr.ac.kopo.model.Work;
import kr.ac.kopo.pager.Pager;
@Service
public class WorkServiceImpl implements WorkService {
	
	@Autowired
	WorkDao dao;

	@Autowired
	AttachDao attachDao;

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
	public boolean login_work(Work work) {
		Work item = dao.login_work(work);
		if (item != null) {
			work.setName(item.getName());
			return true;
		} else {
			return false;

		}
	}
	
	@Override
	@Transactional
	public void signup_work(Work item) {
		dao.signup_work(item);
		
		dao.addAttach(item.getAttachs());
			
	}
	
	@Override
	public void match(String sid, String yid) {
		Match item = new Match();
		item.setSid(sid);
		item.setYid(yid);
		
		dao.match_insert(item);
		}

	@Override
	public boolean checkId_work(String id) {
		if (dao.checkId_work(id) == 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean deleteAttach(int id) {
		if(attachDao.delete(id)) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public void matchdelete(int matchid) {
		Match item = new Match();
		item.setMatchid(matchid);
		
		dao.match_delete(item);
		
	}

	@Override
	public void add(Old item) {
		dao.add(item);		
	}


	@Override
	public void update_old(Old item, String id) {
		dao.update_old(item, id);
		
	}


	@Override
	public void olddelete(String sId) {
		dao.olddelete(sId);
	}


	
	}

	
