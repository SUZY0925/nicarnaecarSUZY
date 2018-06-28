package com.prj.nicarnaecar.service;

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


}
