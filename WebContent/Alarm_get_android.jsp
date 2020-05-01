<%@page import="com.model.AlarmDTO"%>
<%@page import="com.model.AlarmDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");
String num = request.getParameter("num");
System.out.println("jsp에서 받은 num:"+num);
num = num.trim();
JSONObject jsonMain = new JSONObject();
JSONArray jsonArray = new JSONArray();

AlarmDAO dao = AlarmDAO.getDAO();
ArrayList<AlarmDTO> list = dao.select_one(num);
System.out.println("리스트사이즈"+list.size());

for (int i = 0; i < list.size(); i++) {

	JSONObject jsonObject = new JSONObject();

	jsonObject.put("a_number", list.get(i).getA_number());
	jsonObject.put("a_time", list.get(i).getA_time());
	jsonObject.put("p_id", list.get(i).getP_id());
	jsonObject.put("c_number", list.get(i).getC_number());
	jsonObject.put("i_file", list.get(i).getI_file());
	jsonObject.put("v_file", list.get(i).getV_file());
	

	jsonArray.add(jsonObject); }

	jsonMain.put("dataSet", jsonArray);

	System.out.println("123"+jsonArray);
	out.print(jsonMain);


%>
