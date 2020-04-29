<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.model.AlarmDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.AlarmDAO"%>
<%@page import="com.model.ChildDAO"%>
<%@page import="com.model.ChildDTO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

String type = request.getParameter("type");

if (type.equals("join")) {

	String p_id = request.getParameter("id");
	String p_pw = request.getParameter("pw");
	String p_addr = request.getParameter("addr");
	String p_phone = request.getParameter("tel");
	String p_name = request.getParameter("name");
	String p_sex = request.getParameter("sex");

	System.out.print("ÀÌ¸§" + p_name);

	String dumy_child = null;

	MemberDTO dto = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name, p_sex, dumy_child);
	MemberDAO dao = MemberDAO.getDAO();
	int cnt = dao.join(dto);
	out.print(cnt);
} else if (type.equals("child_join")) {

	String c_name = request.getParameter("name");
	String c_sex = request.getParameter("sex");
	String c_age = request.getParameter("age");
	String c_img = request.getParameter("img");
	String p_id = request.getParameter("id");

	String dummy_parents = "98";

	ChildDTO dto = new ChildDTO(p_id, dummy_parents, c_name, c_sex, c_age, c_img);
	ChildDAO dao = ChildDAO.getDAO();
	int cnt = dao.join(dto);
	out.print(cnt);

} else if (type.equals("login")) {
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	MemberDTO dto = new MemberDTO(id, pw);
	MemberDAO dao = MemberDAO.getDAO();
	MemberDTO info = dao.login(dto);

	JSONObject jsonMain = new JSONObject();
	JSONArray jsonArray = new JSONArray();

	JSONObject jsonObject = new JSONObject();

	jsonObject.put("p_id", info.getP_id());
	jsonObject.put("p_pw", info.getP_pw());
	jsonObject.put("p_addr", info.getP_addr());
	jsonObject.put("p_phone", info.getP_phone());
	jsonObject.put("p_name", info.getP_name());

	jsonArray.add(jsonObject);

	jsonMain.put("dataSet", jsonArray);

	System.out.println(jsonMain);
	out.print(jsonMain);
}
%>
