<%@page import="com.controller.LoginCon"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

String returns = null;

MemberDTO dto = new MemberDTO(id, pw);
MemberDAO dao = MemberDAO.getDAO();
MemberDTO info = dao.login(dto);

if (info.equals(null)) {
	returns = "false";
}
%>