package com.prj.nicarnaecar.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prj.nicarnaecar.service.BookingService;
import com.prj.nicarnaecar.vo.BookingVO;

@RestController
@Controller
public class SearchDataController {
	
	@Autowired
	BookingService bookingService;
	
	@RequestMapping(value="/search/dateSearchBtn", method=POST)
	public ResponseEntity<String> dateSearch(@RequestBody BookingVO bookingVO) {
		ResponseEntity<String> responseEntity = null;
		
		
		return responseEntity;
	}
	
}
