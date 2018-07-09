package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.util.RecordCriteria;
import com.prj.nicarnaecar.vo.ProfitVO;

public interface ProfitDAO {
	
	//매출, 지출 추가
	public void insertProfit(ProfitVO profitVO);
	//삭제
	public void deleteProfit(int pnumber);
	//매출, 지출 목록
	public List<ProfitVO> profitList();
	
	// 매출, 지출 목록(페이징
	public List<ProfitVO> profitList(RecordCriteria recordCriteria);
	
	// profit 갯수
	public int profitCount();
}