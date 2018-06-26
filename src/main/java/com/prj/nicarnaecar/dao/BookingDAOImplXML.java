package com.prj.nicarnaecar.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Repository
public class BookingDAOImplXML implements BookingDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void bookingInsert(BookingVO bookingVO) {
		sqlSession.insert("bookingInsert",bookingVO);
	}

	@Override
	public void bookingCancel(int bnumber) {
		sqlSession.delete("bookingDelete",bnumber);
	}

	@Override
	public void bookingModify(BookingVO bookingVO) {
		sqlSession.update("bookingModify",bookingVO);
	}

}
