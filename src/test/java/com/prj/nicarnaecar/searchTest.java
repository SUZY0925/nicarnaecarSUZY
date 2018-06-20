package com.prj.nicarnaecar;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.prj.nicarnaecar.dao.SearchDAO;
import com.prj.nicarnaecar.vo.VehicleVO;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class searchTest {

	private static Logger Logger = LoggerFactory.getLogger(searchTest.class);
	
	@Autowired
	@Qualifier("searchDAOImplXML")
	SearchDAO searchdao;
	
	@Test
	public void AllList() {
		List<VehicleVO> list = searchdao.VehicleList();
		for (VehicleVO vehicleVO : list) {
			System.out.println(vehicleVO.toString());
		}
	}
}
