package com.care.root.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired MemberService ms;
	
	@RequestMapping("index")
	public String index() {
		System.out.println("여기는 컨트롤러-인덱");
		return "/index";
	}
	
	@RequestMapping("member/login")
	public String login() {
		System.out.println("여기는 컨트롤러-로긘");
		return "/member/login";
	}
	@GetMapping("default/header")
	public String header() {
		System.out.println("여기는 컨트롤러-헤더");
		return "/default/header";
	}
	@GetMapping("default/footer")
	public String footer() {
		System.out.println("여기는 컨트롤러-푸터");
		return "/default/footer";
	}
	@PostMapping("/member/loginChk")
	public String loginChk(HttpServletRequest request,
							HttpSession session) {
		
		int result = ms.loginCheck(request);
		if(result==1) {
			System.out.println("로그인 성공");
			return "redirect:/index";
		}else {	
			System.out.println("로그인 실패");
			return "redirect:/index";
		}
	}
		
}
