<%@page import="com.model.AlarmDTO"%>
<%@page import="com.model.AlarmDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");

JSONObject jsonMain = new JSONObject();
JSONArray jsonArray = new JSONArray();

AlarmDAO dao = AlarmDAO.getDAO();
ArrayList<AlarmDTO> list = dao.select_one(num);

for (int i = 0; i < list.size(); i++) {

	//jsonObject.put("학번", result.getString("학번"));
	//jsonObject.put("이름", result.getString("이름"));
	//jsonObject.put("학과", result.getString("학과"));
	JSONObject jsonObject = new JSONObject();

	jsonObject.put("a_number", list.get(i).getA_number());
	jsonObject.put("a_time", list.get(i).getA_time());
	jsonObject.put("p_id", list.get(i).getP_id());
	jsonObject.put("c_number", list.get(i).getC_number());
	jsonObject.put("i_file", list.get(i).getI_file());
	jsonObject.put("v_file", list.get(i).getV_file());
	

	jsonArray.add(jsonObject); }

	jsonMain.put("dataSet", jsonArray);


	System.out.println(jsonMain);
	out.print(jsonMain);


%>
