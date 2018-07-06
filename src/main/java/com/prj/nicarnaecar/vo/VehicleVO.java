package com.prj.nicarnaecar.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class VehicleVO {
	int vprice, vkm;
	String vnumber, vmaker, vmodel, vtype, voil, vcolor, vstate, vyear, eoffice;
	Date vdate;
}
