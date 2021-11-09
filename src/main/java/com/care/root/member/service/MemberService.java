package com.care.root.member.service;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;


public interface MemberService {
	public int loginCheck(HttpServletRequest request);
}
