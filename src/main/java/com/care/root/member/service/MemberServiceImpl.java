package com.care.root.member.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.root.member.dto.MemberDTO;
import com.care.root.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	MemberDTO dto;
	public int loginCheck(HttpServletRequest request) {
		dto = mapper.Check(request.getParameter("id"));
		if(dto!=null) {
			if(dto.getPw().equals(request.getAttribute("pw"))) {
				return 1;
			}
		}
		return 0;
	}
}
