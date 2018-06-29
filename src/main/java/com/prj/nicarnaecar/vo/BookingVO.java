package com.prj.nicarnaecar.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BookingVO {
	int bnumber, vgage, bgage;
	String vnumber, cemail, bstatus, boption, bprice;
	Date bin, bout;
}
