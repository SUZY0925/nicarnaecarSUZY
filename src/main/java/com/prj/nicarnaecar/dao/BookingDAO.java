package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.VehicleVO;

public interface BookingDAO {
	
	// 예약하기
	void bookingInsert(BookingVO bookingVO);
	
	// 예약취소
	void bookingCancel(int bnumber);
	
	// 예약수정
	void bookingModify(BookingVO bookingVO);
	
	// 예약조회
	List<BookingVO> bookingView(String cemail);
	
}
