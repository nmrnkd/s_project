package com.care.root.member.service;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.care.root.member.dto.MemberDTO;


public interface MemberService {
	public int userCheck(String id, String pw);

}
