package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Attach;

@Repository
public class AttachDaoImpl implements AttachDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public boolean delete(int id) {
		if(sql.delete("attach.delete",id) == 1 ) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void signup_work(Attach attach) {
		sql.insert("attach.add", attach);

	}

}
