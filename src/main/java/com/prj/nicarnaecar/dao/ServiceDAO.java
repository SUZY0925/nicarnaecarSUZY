package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.vo.FaqVO;
import com.prj.nicarnaecar.vo.NoticeVO;

public interface ServiceDAO {
	
	List<NoticeVO> noticeList();
	List<FaqVO> faqList();
	NoticeVO noticeView(int nnumber);
}
