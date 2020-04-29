<%@page import="com.model.PostDAO"%>
<%@page import="com.model.PostDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("UTF-8");

String dummy_number = "0";
String p_title = request.getParameter("title");
String p_context = request.getParameter("context");
String dummy_time = "1";
String p_id = request.getParameter("id");

PostDTO dto = new PostDTO(dummy_number, p_title, p_context, dummy_time, p_id);
PostDAO dao = PostDAO.getDAO();
int cnt = dao.upload(dto);
out.print(cnt);
%>