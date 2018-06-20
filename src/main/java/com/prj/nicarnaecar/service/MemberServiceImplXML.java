package com.prj.nicarnaecar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.dao.MemberDAO;
import com.prj.nicarnaecar.vo.MemberVO;

@Repository
public class MemberServiceImplXML implements MemberService {

	@Autowired
	@Qualifier("memberDAOImplXML")
	MemberDAO memberdao;
	
	@Override
	public void memberInsert(MemberVO memberVO) {
		memberdao.memberInsert(memberVO);
	}

	@Override
	public MemberVO getMember(String id) {
		return memberdao.getMember(id);
	}

	@Override
	public void memberUpdate(MemberVO memberVO) {
		memberdao.memberUpdate(memberVO);
	}

	@Override
	public void memberDelete(String id) {
		memberdao.memberDelete(id);
	}

	@Override
	public MemberVO findID(MemberVO memberVO) {
		return memberdao.findID(memberVO);
	}

	@Override
	public MemberVO findPW(MemberVO memberVO) {
		return memberdao.findPW(memberVO);
	}

}
