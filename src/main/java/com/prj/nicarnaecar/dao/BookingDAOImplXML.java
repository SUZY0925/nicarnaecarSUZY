package com.prj.nicarnaecar.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.BookingVO;

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
		sqlSession.update("bookingDelete",bnumber);
	}

	@Override
	public void bookingModify(BookingVO bookingVO) {
		sqlSession.update("bookingModify",bookingVO);
	}

	@Override
	public List<BookingVO> bookingView(String cemail) {
		return sqlSession.selectList("bookingView",cemail);
	}

	@Override
	public BookingVO bookingExtend(String vnumber, Date bout) {
		Map<String,Object> map = new HashMap<>();
		map.put("vnumber", vnumber);
		map.put("bout", bout);
		return sqlSession.selectOne("bookingExtendView", map);
	}

}
