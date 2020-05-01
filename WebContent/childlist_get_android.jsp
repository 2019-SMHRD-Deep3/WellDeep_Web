<%@page import="com.model.ChildListDTO"%>
<%@page import="com.model.ChildListDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");
JSONObject jsonMain = new JSONObject();
JSONArray jsonArray = new JSONArray();

String name = request.getParameter("name");
System.out.println("넘어온이름은? " + name);

ChildListDAO dao = new ChildListDAO();
String child_photo =dao.selectchild(name);
System.out.println("넘어온파일 이름은? " + child_photo);

jsonMain.put("dataSet3", jsonArray);

out.print(child_photo);


%>
