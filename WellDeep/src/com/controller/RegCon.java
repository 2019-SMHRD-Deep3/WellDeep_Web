package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class RegCon implements ICommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String moveURL = null;
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String p_id = info.getP_id();
		String c_num = request.getParameter("c_num");
		String c_name = request.getParameter("c_name");
		String c_sex = request.getParameter("c_sex");
		String c_age = request.getParameter("c_age");
		String c_photo = request.getParameter("c_photo");
		
		MemberDTO dto = new MemberDTO(p_id, c_num, c_name, c_sex, c_age, c_photo);
		MemberDAO dao = MemberDAO.getDAO();
		int cnt = dao.join(dto);
		
		if(cnt == 0) {
			moveURL = "login.jsp?joinsuccess=False";
		}else {
			moveURL = "index.jsp";
		}
		
		return moveURL;
	}


}