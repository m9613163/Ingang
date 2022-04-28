package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class CommunityController {
	@RequestMapping("/chats")
	public String chats() {
		return "community/community_chats";
	}
	
	@RequestMapping("/questions")
	public String questions() {
		return "community/community_questions";
	}
	
	@RequestMapping("/reviews")
	public String reviews() {
		return "community/community_reviews";
	}
	
	@RequestMapping("/studies")
	public String studies() {
		return "community/community_studies";
	}
}
