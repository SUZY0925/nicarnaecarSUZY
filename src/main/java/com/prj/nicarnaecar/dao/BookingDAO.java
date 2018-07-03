package com.prj.nicarnaecar.dao;

import java.sql.Date;
import java.util.List;

import com.prj.nicarnaecar.vo.BookingVO;

public interface BookingDAO {
	
	// 예약하기
	void bookingInsert(BookingVO bookingVO);
	
	// 예약취소
	void bookingCancel(int bnumber);
	
	// 예약수정
	void bookingModify(BookingVO bookingVO);
	
	// 예약조회
	List<BookingVO> bookingView(String cemail);
	
	// 예약연장조회
	BookingVO bookingExtend(String vnumber, Date bout);
	
}
