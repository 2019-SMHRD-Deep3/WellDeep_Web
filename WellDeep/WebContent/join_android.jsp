<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

	<%
	request.setCharacterEncoding("UTF-8");

	String p_id = request.getParameter("id");
	String p_pw = request.getParameter("pw");
	String p_addr = request.getParameter("addr");
	String p_phone = request.getParameter("tel");
	String p_name = request.getParameter("name");
	String p_sex = request.getParameter("sex");
	
	String dumy_child = null;
	
	MemberDTO dto = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name, p_sex, dumy_child);
	MemberDAO dao = MemberDAO.getDAO();
	int cnt = dao.join(dto);

	%>
