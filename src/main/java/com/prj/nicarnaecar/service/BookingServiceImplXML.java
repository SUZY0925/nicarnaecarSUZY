package com.prj.nicarnaecar.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.BookingDAO;
import com.prj.nicarnaecar.vo.BookingVO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Service
public class BookingServiceImplXML implements BookingService {

	@Autowired
	@Qualifier("bookingDAOImplXML")
	BookingDAO bookingdao;
	
	@Override
	public void bookingInsert(BookingVO bookingVO) {
		bookingdao.bookingInsert(bookingVO);
	}

	@Override
	public void bookingCancel(int bnumber) {
		bookingdao.bookingCancel(bnumber);
	}

	@Override
	public void bookingModify(BookingVO bookingVO) {
		bookingdao.bookingModify(bookingVO);
	}

	@Override
	public List<BookingVO> bookingView(String cemail) {
		return bookingdao.bookingView(cemail);
	}

	@Override
	public String bookingExtend(String vnumber, Date bout) {
		return bookingdao.bookingExtend(vnumber, bout);
	}

	@Override
	public void bookingExtendsOK(BookingVO bookingVO) {
		bookingdao.bookingExtendsOK(bookingVO);
	}

	@Override
	public BookingVO getBookingInfo(int bnumber) {
		return bookingdao.getBookingInfo(bnumber);
	}


}
