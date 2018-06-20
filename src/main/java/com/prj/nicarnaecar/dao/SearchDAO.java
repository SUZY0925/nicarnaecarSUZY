package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.vo.VehicleVO;

public interface SearchDAO {
	
	// 차량 전체 목록
	public List<VehicleVO> VehicleList();
}
