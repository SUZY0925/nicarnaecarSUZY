package com.prj.nicarnaecar.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	String cemail;		// 고객이메일
	String cpasswd;	// 고객비밀번호
	String cname;		// 고객이름
	String cbirth;
	String cphone;		// 고객전화번호
	Date cdate;			// 가입일
	Date cmdate;		// 최근방문일
}
