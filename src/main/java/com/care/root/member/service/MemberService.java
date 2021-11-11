package com.care.root.member.service;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;


public interface MemberService {
	public int userCheck(String id, String pw);
	public void memberInfo(Model model);
	public void getMember(String id,Model model);
}
