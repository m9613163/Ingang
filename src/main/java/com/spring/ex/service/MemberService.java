package com.spring.ex.service;

import org.springframework.stereotype.Service;

import com.spring.ex.dto.MemberDTO;
@Service
public interface MemberService {
	
	//회원 가입
	public void signUp(MemberDTO dto) throws Exception;
	
	//로그인
	public MemberDTO login(MemberDTO dto) throws Exception;
}
