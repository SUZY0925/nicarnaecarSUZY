package com.prj.nicarnaecar.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	String CEMAIL;		// 고객이메일
	String CPASSWD;	// 고객비밀번호
	String CNAME;		// 고객이름
	String CBIRTH;		// 고객생일
	String CPHONE;		// 고객전화번호
	Date CDATE;			// 가입일
	Date CMDATE;		// 최근방문일
}
