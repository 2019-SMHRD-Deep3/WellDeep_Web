<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");

	String p_id = request.getParameter("id");
	String p_pw = request.getParameter("pw");
	String p_addr = request.getParameter("addr");
	String p_phone = request.getParameter("tel");
	String p_name = request.getParameter("name");
	String p_sex = request.getParameter("sex");
	
	System.out.println(p_id);
	System.out.println(p_pw);
	System.out.println(p_addr);
	System.out.println(p_phone);
	System.out.println(p_name);
	System.out.println(p_sex);

	String returns = null;

	MemberDTO dto = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name, p_sex);
	MemberDAO dao = MemberDAO.getDAO();
	int cnt = dao.join(dto);

	if (cnt == 0) {
		returns = "false";
	}
	out.println(returns);
	System.out.println(returns);
	%>

</body>
</html>