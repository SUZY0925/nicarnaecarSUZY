package com.prj.nicarnaecar.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.VehicleVO;

@Repository
public class SearchDAOImplXML implements SearchDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<VehicleVO> VehicleList() {
		return sqlSession.selectList("VehicleList");
	}

}
