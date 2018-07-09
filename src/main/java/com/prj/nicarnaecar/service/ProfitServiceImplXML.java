package com.prj.nicarnaecar.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.ProfitDAO;
import com.prj.nicarnaecar.util.PageCriteria;
import com.prj.nicarnaecar.util.RecordCriteria;
import com.prj.nicarnaecar.vo.NoticeVO;
import com.prj.nicarnaecar.vo.ProfitVO;

@Service
public class ProfitServiceImplXML implements ProfitService {

	@Autowired
	@Qualifier("profitDAOImplXML")
	private ProfitDAO profitDAO;
	
	@Override
	public void profitInsert(ProfitVO profitVO) {
		profitDAO.insertProfit(profitVO);
	}

	@Override
	public void profitDelete(int pnumber) {
		profitDAO.deleteProfit(pnumber);
	}

	@Override
	public List<ProfitVO> profitList() {
		return profitDAO.profitList();
	}

	@Override
	public List<ProfitVO> profitList(RecordCriteria recordCriteria) {
		return profitDAO.profitList(recordCriteria);
	}

	@Override
	public void profitList(HttpServletRequest request) {
		int reqPage = 0;
		if (request.getParameter("reqPage") == null || request.getParameter("reqPage") == "") {
			reqPage = 1;
		} else {
			reqPage = Integer.parseInt(request.getParameter("reqPage"));
		}

		RecordCriteria rc = new RecordCriteria(reqPage);
		List<ProfitVO> list = profitList(rc);
		int totalRec = profitCount();
		PageCriteria pc = new PageCriteria(rc,totalRec);
					
		request.setAttribute("list", list);
		request.setAttribute("page", pc);
		
	}

	@Override
	public int profitCount() {
		return profitDAO.profitCount();
	}

	
}