package com.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class JoinCon implements ICommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String moveURL = null;
		
	    response.setCharacterEncoding("EUC-KR");
		try {
			request.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String p_id = request.getParameter("p_id");
		String p_pw = request.getParameter("p_pw");
		String p_addr = request.getParameter("p_addr");
		String p_phone = request.getParameter("p_phone");
		String p_name = request.getParameter("p_name");
		String p_sex = request.getParameter("p_sex");
		/*
		 * String c_cnt = request.getParameter("c_cnt");
		 */		
		System.out.println(p_sex);
		String c_cnt = null;		
		MemberDTO dto = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name, p_sex, c_cnt);
		MemberDAO dao = MemberDAO.getDAO();
		int cnt = dao.join(dto);
		
		if(cnt == 0) {
			moveURL = "join.jsp?joinsuccess=False";
		}else {
			moveURL = "join.jsp?joinsuccess=True";
		}
		
		return moveURL;
	}


}