package com.prj.nicarnaecar.dao;

import com.prj.nicarnaecar.vo.BookingVO;

public interface BookingDAO {
	
	// 차량 선택 후 날짜로 검색....
	
	// 예약하기
	void bookingInsert(BookingVO bookingVO);
	
	// 예약취소
	void bookingCancel(int bnumber);
	
	// 예약수정
	void bookingModify(BookingVO bookingVO);
}
