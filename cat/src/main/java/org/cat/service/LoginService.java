package org.cat.service;

import javax.servlet.http.HttpSession;

import org.cat.domain.Member;

public interface LoginService {

	// 01_01. 회원 로그인 체크
    public boolean login(Member mb, HttpSession session);
    // 01_02. 회원 로그인 정보
    public Member viewMember(Member mb);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);
}
