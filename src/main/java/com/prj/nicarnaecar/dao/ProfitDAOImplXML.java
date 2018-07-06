package com.prj.nicarnaecar.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.ProfitVO;

@Repository
public class ProfitDAOImplXML implements ProfitDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertProfit(ProfitVO profitVO) {
		sqlSession.insert("profitInsert", profitVO);
	}

	@Override
	public void deleteProfit(int pnumber) {
		sqlSession.delete("profitDelete",pnumber);
	}

	@Override
	public List<ProfitVO> profitList() {
		return sqlSession.selectList("profitList");
	}

}