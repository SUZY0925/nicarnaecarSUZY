package com.prj.nicarnaecar.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BookingVO {
	int bnumber, vkm, bkm;
	String vnumber, cemail, bstatus, boption, bprice, bdelivery, breturn;
	Date bin, bout;
}
