package com.prj.nicarnaecar.service;

import java.util.List;

import com.prj.nicarnaecar.vo.FaqVO;
import com.prj.nicarnaecar.vo.NoticeVO;

public interface ServiceService {
	List<NoticeVO> noticeList();
	List<FaqVO> faqList();
	NoticeVO noticeView(int nnumber);
}
