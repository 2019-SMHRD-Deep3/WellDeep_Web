<%@page import="java.util.ArrayList"%>
<%@page import="com.model.RecordingDTO"%>
<%@page import="com.model.RecordingDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");

JSONObject jsonMain = new JSONObject();
JSONArray jsonArray = new JSONArray();
JSONObject jsonObject = new JSONObject();

RecordingDAO dao = RecordingDAO.getDAO();
ArrayList<RecordingDTO> list = dao.select(id);

for (int i = 0; i < list.size(); i++) {

	//jsonObject.put("학번", result.getString("학번"));
	//jsonObject.put("이름", result.getString("이름"));
	//jsonObject.put("학과", result.getString("학과"));
	jsonObject.clear();

	jsonObject.put("r_number", list.get(i).getR_number());
	jsonObject.put("r_file", list.get(i).getR_file());
	jsonObject.put("r_time", list.get(i).getR_time());
	jsonObject.put("p_id", list.get(i).getP_id());
	jsonObject.put("c_number", list.get(i).getC_number());
	jsonObject.put("i_number", list.get(i).getI_number());
	jsonObject.put("v_number", list.get(i).getV_number());

	jsonArray.add(jsonObject); }

jsonMain.put("dataSet", jsonArray);


	System.out.println(jsonMain);
out.print(jsonMain);


%>
