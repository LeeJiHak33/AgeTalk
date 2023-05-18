package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkDaoImpl implements WorkDao {

	@Autowired
	SqlSession sql;
}
