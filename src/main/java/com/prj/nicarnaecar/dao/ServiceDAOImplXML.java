package com.prj.nicarnaecar.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.FaqVO;
import com.prj.nicarnaecar.vo.NoticeVO;

@Repository
public class ServiceDAOImplXML implements ServiceDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeVO> noticeList() {
		return sqlSession.selectList("noticeList");
	}

	@Override
	public List<FaqVO> faqList() {
		return sqlSession.selectList("faqList");
	}

	@Override
	public NoticeVO noticeView(int nnumber) {
		return sqlSession.selectOne("noticeView",nnumber);
	}

}
