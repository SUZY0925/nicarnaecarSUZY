package com.prj.nicarnaecar.service;

import java.util.List;

import com.prj.nicarnaecar.vo.ProfitVO;

public interface ProfitService {

	//수익, 지출 등록
	public void profitInsert(ProfitVO profitVO);
	
	//삭제
	public void profitDelete(Integer pnumber);
	
	//리스트
	public List<ProfitVO> profitList();
}