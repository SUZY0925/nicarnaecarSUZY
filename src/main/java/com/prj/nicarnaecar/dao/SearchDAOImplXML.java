package com.prj.nicarnaecar.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Repository
public class SearchDAOImplXML implements SearchDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<VehicleVO> AllVehicleList() {
		return sqlSession.selectList("AllVehicleList");
	}

	@Override
	public List<VehicleVO> dateVehicleList(String bin, String bout, String eoffice) {
		Map<String,Object> map = new HashMap<>();
		map.put("bin", bin);
		map.put("bout", bout);
		map.put("eoffice", eoffice);
		return sqlSession.selectList("dateVehicleList", map);
	}

	@Override
	public List<VehicleVO> vehicleList() {
		return null;
	}

	@Override
	public VehicleVO reservationView(String vnumber) {
		return sqlSession.selectOne("reservationView", vnumber);
	}
	
	@Override
	public List<BookingVO> deliverySearch() {
		return sqlSession.selectList("delivery");
	}

	@Override
	public List<BookingVO> returnSearch() {
		return sqlSession.selectList("return");
	}
	
	@Override
	public void deliveryCar(int bnumber) {
		sqlSession.update("deliveryCar", bnumber);
	}

	@Override
	public void returnCar(int bnumber) {
		sqlSession.update("returnCar", bnumber);
	}

}
