package org.cat.service;

import org.cat.domain.Member;

public interface MemberService {

	public void register(Member mb);
	
	public boolean read(String id, String pw);
	
}
