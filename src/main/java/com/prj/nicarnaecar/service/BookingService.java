package com.prj.nicarnaecar.service;

import com.prj.nicarnaecar.vo.BookingVO;

public interface BookingService {
	// 예약하기
	void bookingInsert(BookingVO bookingVO);
	
	// 예약취소
	void bookingCancel(int bnumber);
	
	// 예약수정
	void bookingModify(BookingVO bookingVO);
}
