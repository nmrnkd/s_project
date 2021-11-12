package com.care.root.member.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.member.dto.MemberDTO;
import com.care.root.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	MemberDTO dto;
	BCryptPasswordEncoder encoder;
	public MemberServiceImpl() {
		encoder = new BCryptPasswordEncoder();
	}
	public int userCheck(String id, String pw) {
		dto = mapper.getMember(id);
		if(dto!=null) {
//			if(pw.equals(dto.getPw())) {
			if(encoder.matches(pw,dto.getPw())||pw.equals(dto.getPw())) {
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
	public int register(MemberDTO dto) {
		String securePw = encoder.encode(dto.getPw());
		dto.setPw(securePw);
		
		int result = 0;
		//primary key 제약조건 때문에 중복 id 회원가입 시도시 오류 발생.
		//오류페이지를 사용자에게 보여주지 않기 위해 try catch로 묶음
		try {
			result = mapper.register(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
