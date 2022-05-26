package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/courses_history")
	public String coursesHistory() {
		return "/mypage/courses_history";
	}
	
	@RequestMapping("/notes_history")
	public String notesHistory() {
		return "/mypage/notes_history";
	}
	
	@RequestMapping("/my_course")
	public String myCourse() {
		return "/mypage/my_course";
	}
	
	@RequestMapping("/my_note")
	public String myNote() {
		return "/mypage/my_note";
	}
	
	@RequestMapping("/my_post")
	public String myPost() {
		return "/mypage/my_post";
	}
}
