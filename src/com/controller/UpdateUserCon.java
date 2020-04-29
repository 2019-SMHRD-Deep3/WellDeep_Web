package com.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class UpdateUserCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = info.getP_id();
		String c_photo = info.getC_photo();
		String c_name = info.getC_name();
		String c_age = info.getC_age();
		
		String re_pw = request.getParameter("pw");
		String re_phone = request.getParameter("phone");
		String re_addr = request.getParameter("addr");
		String re_name = request.getParameter("name");
		
		Gson gson = new Gson();
		String value = null;
		MemberDAO dao = new MemberDAO();
		MemberDTO search_info = dao.search(id);
		
		if(re_pw != null) {
			id = search_info.getP_id();
			String name = search_info.getP_name();
			String addr = search_info.getP_addr();
			String phone = search_info.getP_phone();
			MemberDTO modify_info = dao.updateUser(id, re_pw, addr, phone, name, c_photo, c_name, c_age);
			value = gson.toJson(modify_info);
			session.setAttribute("info", modify_info);
		}
		if(re_name != null) {
			id = search_info.getP_id();
			String pw = search_info.getP_pw();
			String addr = search_info.getP_addr();
			String phone = search_info.getP_phone();
			MemberDTO modify_info = dao.updateUser(id, pw, addr, phone, re_name, c_photo, c_name, c_age);
			value = gson.toJson(modify_info);
			session.setAttribute("info", modify_info);
		}
		if(re_addr != null) {
			id = search_info.getP_id();
			String pw = search_info.getP_pw();
			String name = search_info.getP_name();
			String phone = search_info.getP_phone();
			MemberDTO modify_info = dao.updateUser(id, pw, re_addr, phone, name, c_photo, c_name, c_age);
			value = gson.toJson(modify_info);
			session.setAttribute("info", modify_info);
		}
		if(re_phone != null) {
			id = search_info.getP_id();
			String pw = search_info.getP_pw();
			String name = search_info.getP_name();
			String addr = search_info.getP_addr();
			MemberDTO modify_info = dao.updateUser(id, pw, addr, re_phone, name, c_photo, c_name, c_age);
			value = gson.toJson(modify_info);
			session.setAttribute("info", modify_info);
		}
		System.out.println(value);

		return value;

	}

}