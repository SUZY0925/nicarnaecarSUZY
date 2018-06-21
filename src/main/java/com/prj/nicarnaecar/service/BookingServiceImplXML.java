package com.prj.nicarnaecar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.prj.nicarnaecar.dao.BookingDAO;
import com.prj.nicarnaecar.vo.BookingVO;

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

}
