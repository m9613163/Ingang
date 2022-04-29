package com.spring.ex.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.service.MemberService;


@Controller
public class LoginController {
	
	@Inject
	MemberService service;
	
	@RequestMapping(value="/loginPageView", method = RequestMethod.GET)
	public String getLogin(MemberDTO dto) throws Exception {
		
		return "/login/login";
	}
	
	@RequestMapping(value = "/loginPageView", method = RequestMethod.POST)
	public String postLogin(MemberDTO dto) throws Exception {

		service.login(dto);

		return "/login/login";
	}
	
	@RequestMapping(value="/signUp", method = RequestMethod.GET)
	public String getSignUp() throws Exception {
		return "/login/signUp";
	}	
	
	@RequestMapping(value="/signUp", method = RequestMethod.POST)
	public String postSignUp(MemberDTO dto) throws Exception {
		
		service.signUp(dto);
		
		return "/login/signUp";
	}	
	
}
