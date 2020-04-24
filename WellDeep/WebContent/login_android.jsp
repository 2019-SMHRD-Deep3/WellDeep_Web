<%@page import="com.controller.LoginCon"%>
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
<%request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String returns = null;

MemberDTO dto = new MemberDTO(id, pw);
MemberDAO dao = MemberDAO.getDAO();
MemberDTO info = dao.login(dto);

if (info.equals(null)) {
	returns = "false";
} 
out.println(returns);
System.out.println(returns);

%>

</body>
</html>