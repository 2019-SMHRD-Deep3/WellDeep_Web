package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class LoginCon implements ICommand {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
//	    System.out.println("로그인 실행");
		// response.setCharacterEncoding("EUC-KR");
		// request.setCharacterEncoding("EUC-KR");
		// String[] item = request.getParameterValues("item");
		// int num = Integer.parseInt(request.getParameter("num"));
		String p_id = request.getParameter("p_id");
		String p_pw = request.getParameter("p_pw");
//		String detail = request.getParameter("detail");
//		String write = request.getParameter("write");
//		System.out.println(detail);

		MemberDTO dto = new MemberDTO(p_id, p_pw);
		MemberDAO dao = MemberDAO.getDAO();
		MemberDTO info = dao.login(dto);

		if (info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			System.out.println(info.getP_id() +"님 입장");
			System.out.println(info.getC_name());
			moveURL = "index.jsp";
		} 

//		if (request.getParameter("detail") != null) {
//			moveURL = "result.jsp";
//			
//		} else if (request.getParameter("write") != null) {
//			moveURL = "community.jsp";	
//
//		} else if(request.getParameter("myinfo") != null) {
//			moveURL = "myIndex.jsp";
//		} else if(request.getParameter("counsel") != null) {
//			moveURL = "counsel.jsp";
//
//		}else if(request.getParameter("myResult")!=null) {
//			moveURL="myResult.jsp";
//		}
//		else if(info == null){
//			moveURL = "login.jsp?success=False";
		else {
//			System.out.println("로그인실패");
			moveURL = "index.jsp?success=False";
		}

		return moveURL;
	}

}
