package com.prj.nicarnaecar.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BookingVO {
	int bnumber, bprice;
	String vnumber, cemail, bstatus, boption;
	Date bin, bout;
}
