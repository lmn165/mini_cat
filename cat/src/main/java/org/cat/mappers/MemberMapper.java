package org.cat.mappers;

import javax.servlet.http.HttpSession;

import org.cat.domain.Member;

public interface MemberMapper extends CRUDMapper<Member, Integer> {

	public void signUp(Member mb);
	
	
}
