package com.prj.nicarnaecar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.ProfitDAO;
import com.prj.nicarnaecar.vo.ProfitVO;

@Service
public class ProfitServiceImplXML implements ProfitService {

	@Autowired
	@Qualifier("profitDAOImplXML")
	private ProfitDAO profitDAO;
	
	@Override
	public void profitInsert(ProfitVO profitVO) {
		profitDAO.insertProfit(profitVO);
	}

	@Override
	public void profitDelete(int pnumber) {
		profitDAO.deleteProfit(pnumber);
	}

	@Override
	public List<ProfitVO> profitList() {
		return profitDAO.profitList();
	}

	
}