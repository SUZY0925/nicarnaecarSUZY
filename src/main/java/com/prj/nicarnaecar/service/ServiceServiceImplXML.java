package com.prj.nicarnaecar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.ServiceDAO;
import com.prj.nicarnaecar.vo.FaqVO;
import com.prj.nicarnaecar.vo.NoticeVO;

@Service
public class ServiceServiceImplXML implements ServiceService {

	@Autowired
	@Qualifier("serviceDAOImplXML")
	ServiceDAO serviceDAO;
	
	@Override
	public List<NoticeVO> noticeList() {
		return serviceDAO.noticeList();
	}

	@Override
	public List<FaqVO> faqList() {
		return serviceDAO.faqList();
	}

	@Override
	public NoticeVO noticeView(int nnumber) {
		return serviceDAO.noticeView(nnumber);
	}

}
