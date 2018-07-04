package com.prj.nicarnaecar.service;

import java.sql.Date;
import java.util.List;

import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.VehicleVO;

public interface BookingService {
	// 예약하기
	void bookingInsert(BookingVO bookingVO);
	
	// 예약취소
	void bookingCancel(int bnumber);
	
	// 예약수정
	void bookingModify(BookingVO bookingVO);
	
	// 예약조회
	List<BookingVO> bookingView(String cemail);
	
	// 예약연장조회
	String bookingExtend(String vnumber, Date bout);
	
	// 예약연장하기
	void bookingExtendsOK(BookingVO bookingVO);
	
	// 예약번호로 예약조회
	BookingVO getBookingInfo(int bnumber);
	
}
