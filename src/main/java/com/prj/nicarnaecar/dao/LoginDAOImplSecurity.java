package com.prj.nicarnaecar.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.prj.nicarnaecar.vo.MemberVO;
import com.prj.nicarnaecar.vo.securityLoginVO;

@Repository
public class LoginDAOImplSecurity implements UserDetailsService{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		// 사용자 정보 가져오기
		MemberVO memberVO = null;
		StringBuffer str = new StringBuffer();

		str.append("select cemail, cpasswd, cphone, cbirth, cname from customers where cemail = ?");
		
		try {
			memberVO = this.jdbcTemplate.queryForObject(str.toString(),new Object[] {username},
					new BeanPropertyRowMapper<>(MemberVO.class));
		} catch (DataAccessException e) {
			memberVO = new MemberVO();
		}
		
		if(memberVO == null) {// 사용자가 존재하지 않는 경우
			throw new UsernameNotFoundException("사용자가 존재하지 않습니다.");
		}
		
		// 권한정보 가져오기
		List<String> auth = new ArrayList<>();
		StringBuffer str2 = new StringBuffer();
		str2.append("select role from user_role where email = ?");
		auth = this.jdbcTemplate.queryForList(str2.toString(), new Object[] {username},String.class);
		
		Set<GrantedAuthority> authorities = new HashSet<>();
		
		for(String role : auth) {
			authorities.add(new SimpleGrantedAuthority(role));
		}

		securityLoginVO loginVO = new securityLoginVO(memberVO.getCemail(), memberVO.getCpasswd(), authorities);
		
		loginVO.setName(memberVO.getCname());
		loginVO.setBirth(memberVO.getCbirth());
		loginVO.setPhone(memberVO.getCphone());
		
		return loginVO;
	}

}
