package org.cat.service;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.cat.domain.Member;
import org.cat.mappers.LoginMapper;
import org.springframework.stereotype.Service;


@Service
public class LoginServiceImp implements LoginService {

	@Override
	public boolean login(Member mb, HttpSession session) {
		boolean result = login(mb, session);
        if (result) { // true일 경우 세션에 등록
            Member mb2 = viewMember(mb);
            // 세션 변수 등록
            session.setAttribute("Id", mb2.getId());
            session.setAttribute("Password", mb2.getPw());
        } 
        return result;
	}

	@Override
	public Member viewMember(Member mb) {
		return viewMember(mb);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub

	}

}
