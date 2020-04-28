<%@page import="java.util.ArrayList"%>
<%@page import="com.model.RecordingDTO"%>
<%@page import="com.model.RecordingDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");

JSONObject jsonObj = new JSONObject();
JSONArray jArray = new JSONArray();
String jsonSt;

RecordingDAO dao = RecordingDAO.getDAO();
ArrayList<RecordingDTO> list = dao.select(id);

for (int i = 0; i < list.size(); i++) {
	
	jsonObj.put("r_number", list.get(i).getR_number());
	jsonObj.put("r_file", list.get(i).getR_file());
	jsonObj.put("r_time", list.get(i).getR_time());
	jsonObj.put("p_id", list.get(i).getP_id());
	jsonObj.put("c_number", list.get(i).getC_number());
	jsonObj.put("i_number", list.get(i).getI_number());
	jsonObj.put("v_number", list.get(i).getV_number());
	jArray.add(jsonObj);
	System.out.println(jArray.get(i));
	jsonSt = jArray.toJSONString();
	out.print(jArray.get(i));
}

%>
