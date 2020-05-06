<%@page import="com.model.AlarmDTO"%>
<%@page import="com.model.AlarmDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.simple.*"%>

<%
	request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

String type = request.getParameter("type");
type = type.trim();
System.out.println("app에서 받아온 타입:" + type);

if (type.equals("child_list")) {

	String num = request.getParameter("num");
	num = num.trim();
	System.out.println("jsp에서 받은 num:" + num);
	JSONObject jsonMain = new JSONObject();
	JSONArray jsonArray = new JSONArray();

	AlarmDAO dao = AlarmDAO.getDAO();
	ArrayList<AlarmDTO> list = dao.select_one(num);
	System.out.println("리스트사이즈" + list.size());

	for (int i = 0; i < list.size(); i++) {
		JSONObject jsonObject = new JSONObject();

		jsonObject.put("a_number", list.get(i).getA_number());
		jsonObject.put("a_time", list.get(i).getA_time());
		jsonObject.put("p_id", list.get(i).getP_id());
		jsonObject.put("c_number", list.get(i).getC_number());
		jsonObject.put("i_file", list.get(i).getI_file());
		jsonObject.put("v_file", list.get(i).getV_file());

		jsonArray.add(jsonObject);
	}

	jsonMain.put("dataSet", jsonArray);

	System.out.println("123" + jsonArray);
	out.print(jsonMain);
} else if (type.equals("delete")) {

	String num = request.getParameter("num");
	num = num.trim();
	System.out.println("받아온 번호:" + num);
	AlarmDTO dto = new AlarmDTO(num);
	AlarmDAO dao = AlarmDAO.getDAO();
	int cnt = dao.delete(num);
	out.print(cnt);
}
%>
