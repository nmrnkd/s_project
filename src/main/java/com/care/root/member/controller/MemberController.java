package com.care.root.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.root.member.dto.MemberDTO;
import com.care.root.member.service.MemberService;
import com.care.root.member.session_name.MemberSessionName;

@Controller
@RequestMapping("member")
public class MemberController implements MemberSessionName{
	@Autowired MemberService ms;
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	@PostMapping("user_check")
	public String userCheck(@RequestParam String id, 
							@RequestParam String pw,
							RedirectAttributes rs) {
		int result = ms.userCheck(id,pw);
		if(result==0) {
			rs.addAttribute("id",id);
			return "redirect:successLogin";
		}
		return "redirect:login";
	}
	@GetMapping("/successLogin")
	public String successLogin(@RequestParam String id, HttpSession session) {
		session.setAttribute(LOGIN, id);
		return "member/successLogin";
	}
	@GetMapping("logout")
	public String logout(HttpSession session) {
		if(session.getAttribute(LOGIN)!=null) {
			session.invalidate();
		}
		return "redirect:/index";
	}
	@GetMapping("memberinfo")
	public String memberInfo(Model model, HttpSession session) {
		if(session.getAttribute(LOGIN)!=null) {
			ms.memberInfo(model);
			return "member/memberinfo";			
		}
		return "redirect:/login";
	}
	@GetMapping("info")
	public String info(@RequestParam String id, Model model) {
		ms.getMember(id,model);
		return "member/info";
	}
	@GetMapping("register_form")
	public String registerForm() {
		return "member/register";
	}
	@PostMapping("register")
	public String register(MemberDTO dto) {
		int result = ms.register(dto);
		System.out.println(dto.getId());
		System.out.println(dto.getPw());
		System.out.println(dto.getAddr());
		if(result==0) {
			return "redirect:register_form";
		}
		return "redirect:login";
	}
}
