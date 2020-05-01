<%@page import="com.model.ChildListDTO"%>
<%@page import="com.model.ChildListDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");

String num = request.getParameter("num");
System.out.println("이값은? " + num);
JSONObject jsonMain = new JSONObject();
JSONArray jsonArray = new JSONArray();


ChildListDAO dao = ChildListDAO.getDAO();
ArrayList<ChildListDTO> list = dao.selectchild(num);

for (int i = 0; i < list.size(); i++) {

	//jsonObject.put("학번", result.getString("학번"));
	//jsonObject.put("이름", result.getString("이름"));
	//jsonObject.put("학과", result.getString("학과"));
	
	JSONObject jsonObject = new JSONObject();
	jsonObject.put("c_number", list.get(i).getC_number());
	jsonObject.put("c_name", list.get(i).getC_name());
	jsonObject.put("c_sex", list.get(i).getC_sex());
	jsonObject.put("c_age", list.get(i).getC_age());
	jsonObject.put("c_photo", list.get(i).getC_photo());
	jsonObject.put("p_id", list.get(i).getP_id());
	

	jsonArray.add(jsonObject); }

jsonMain.put("dataSet2", jsonArray);


	System.out.println("tetttt1" + jsonMain);
	out.print(jsonMain);


%>
