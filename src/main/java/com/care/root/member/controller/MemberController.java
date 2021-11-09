package com.care.root.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.root.member.service.MemberService;

@Controller
public class MemberController {
//	@Autowired MemberService ms;
	
	@RequestMapping("index")
	public String index() {
		System.out.println("여기는 컨트롤러");
		return "/index";
	}
	
	@RequestMapping("info")
	public String info() {
		System.out.println("여기는 컨트롤러");
		return "member/info";
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("여기는 컨트롤러");
		return "member/login";
	}
	
	@RequestMapping("memberinfo")
	public String memberinfo() {
		System.out.println("여기는 컨트롤러");
		return "member/memberinfo";
	}
	
}
