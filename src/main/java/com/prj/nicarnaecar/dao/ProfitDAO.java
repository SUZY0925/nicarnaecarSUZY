package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.vo.ProfitVO;

public interface ProfitDAO {
	
	//수익, 지출 추가
	public void insertProfit(ProfitVO profitVO);
	//삭제
	public void deleteProfit(int pnumber);
	//수익, 지출 목록
	public List<ProfitVO> profitList();
}