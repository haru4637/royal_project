package com.ezen.royal.client.palace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class RoyalInnerController {
	
	@GetMapping("/royalInner") // 내부 건축물 
	
	public String inner() {
		return "/userViews/royal_intro/royal_Inner_view";
	}
	
	@GetMapping("/royalInfo") // 관람안내
	public String info() {
		return "/userViews/royal_intro/guide_view";
	}
	
	@GetMapping("/viewing_time") // 관람시간
	public String viewing_time() {
		return "/userViews/royal_intro/viewing_time";
	}
	
	@GetMapping("/fare") // 관람요금
	public String fare() {
		return "/userViews/royal_intro/fare";
	}
	
}