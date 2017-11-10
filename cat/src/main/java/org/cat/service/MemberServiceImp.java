package org.cat.service;

import org.cat.domain.Member;
import org.cat.mappers.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Log
@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void register(Member mb) {
		log.info("register");
		mapper.signUp(mb);
	}

}
