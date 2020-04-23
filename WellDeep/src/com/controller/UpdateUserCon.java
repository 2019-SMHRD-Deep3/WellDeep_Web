package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class UpdateUserCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String p_id = info.getP_id();
		String p_pw = request.getParameter("p_pw");
		String p_addr = request.getParameter("p_addr");
		String p_phone = request.getParameter("p_phone");
		String p_name = request.getParameter("p_name");
		String p_sex = request.getParameter("p_sex");
				
		MemberDTO dto = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name, p_sex);
		MemberDAO dao = MemberDAO.getDAO();
		int cnt = dao.updateUser(dto);
		
		if(cnt > 0) {
			session.setAttribute("info", dto);
			System.out.println("정보수정완료");
		}
		moveURL = "myIndex.jsp";
		return moveURL;
	}

}