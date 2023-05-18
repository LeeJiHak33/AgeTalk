package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.WorkDao;
import kr.ac.kopo.model.User;
@Service
public class WorkServiceImpl implements WorkService {
	@Autowired
	WorkDao dao;
	
	@Override
	public List<User> youthlist() {
		// TODO Auto-generated method stub
		return null;
	}

}
