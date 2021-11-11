package com.care.root.member.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.member.dto.MemberDTO;
import com.care.root.mybatis.member.MemberMapper;

@Service


public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	MemberDTO dto;
	public int userCheck(String id, String pw) {
		dto = mapper.getMember(id);
		System.out.println(dto.getId());
		System.out.println(dto.getPw());
		System.out.println(dto.getAddr());
		if(dto!=null) {
			if(pw.equals(dto.getPw())) {
				return 0;
			}
		}
		return 1;
	}
	public void memberInfo(Model model) {
		model.addAttribute("memberList",mapper.memberInfo());
	}
	public void getMember(String id,Model model) {
		model.addAttribute("info",mapper.getMember(id));
	}
}
